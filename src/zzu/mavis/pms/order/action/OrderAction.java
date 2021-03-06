package zzu.mavis.pms.order.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import zzu.mavis.pms.customer.domain.Customer;
import zzu.mavis.pms.customer.service.CustomerService;
import zzu.mavis.pms.member.domain.Member;
import zzu.mavis.pms.member.service.MemberService;
import zzu.mavis.pms.order.domain.Orders;
import zzu.mavis.pms.order.service.OrderService;
import zzu.mavis.pms.room.domain.Room;
import zzu.mavis.pms.room.service.RoomService;

import javax.sound.midi.Soundbank;
import java.lang.annotation.ElementType;
import java.text.DecimalFormat;
import java.util.Date;
import java.util.List;
import java.util.logging.SimpleFormatter;

public class OrderAction extends ActionSupport implements ModelDriven<Orders> {
    private OrderService orderService;
    private MemberService memberService;

    public void setMemberService(MemberService memberService) {
        this.memberService = memberService;
    }

    public void setOrderService(OrderService orderService) {
        this.orderService = orderService;
    }
    private CustomerService customerService;

    public void setCustomerService(CustomerService customerService) {
        this.customerService = customerService;
    }

    private RoomService roomService;

    public void setRoomService(RoomService roomService) {
        this.roomService = roomService;
    }

    private Orders orders = new Orders();
    @Override
    public Orders getModel() {
        return orders;
    }

    public String  add() {
        Customer customer = (Customer) ActionContext.getContext().getSession().get("byName");
        System.out.println(orders.getOid());
        customer.setIdCard(orders.getCustomer().getIdCard());
        customer.setCtmName(orders.getCustomer().getCtmName());
        customer.setSex(orders.getCustomer().getSex());
        customer.setBirthday(orders.getCustomer().getBirthday());
        Room room = roomService.findByRoomId(orders.getRoom().getRoomId());
        orders.setCustomer(customer);
        orders.setRoom(room);

        //先查出会员类型，再确定如何计算（这里只考虑储值型会员）
        Member member = memberService.findByCst(customer);
        //如果该顾客尚未注册会员
        double zhekou = 1;
        Double mony = null;
        Double remain = null;
        if (null != member&& member.getMemtype()==2) {
            mony = member.getMon();
            remain = member.getRemain();
            if (null != mony) {
                //计算折扣
                if (mony == 5000) {
                    zhekou = 0.9;
                }
                if (mony == 4000) {
                    zhekou = 0.93;
                }
                if (mony == 3000) {
                    zhekou = 0.95;
                }
                if (mony == 2000) {
                    zhekou = 0.97;
                }
                if (mony == 1000) {
                    zhekou = 0.99;
                }
            }
        }

        //计算总价money
        Date dayin = orders.getDayin();
        Date dayout = orders.getDayout();
        long from = dayin.getTime();
        long to = dayout.getTime();
        int days = (int) ((to - from) / (1000 * 60 * 60 * 24));
        Double money = (days * (Double) room.getPricePerNight()) * zhekou;

        DecimalFormat df = new DecimalFormat("#.00");
        Double moneyy=Double.parseDouble(df.format(money));
        orders.setMony(moneyy);

        if (null != member&& member.getMemtype()==1) {
            int origin = member.getScore();
            member.setScore((int) (origin+(moneyy.intValue())*0.1));
        }
        if (null != member&&member.getMemtype()==2) {
            if (remain >= money) {
                remain = remain - money;
                member.setRemain(remain);
                memberService.add(member);//savaOrUpdate()
                orderService.add(orders);
                return "topay";
            } else {
                //余额不够！
                addActionMessage("余额不够，无法使用会员储值卡付款，请及时充值!");
                return "fail";
            }
        }
        orderService.add(orders);
        return "topay";
    }

    public String findByctmId(){
        Customer byName = (Customer) ActionContext.getContext().getSession().get("byName");
        List<Orders> byctmId = orderService.findByctmId(byName.getCtmId());
        ActionContext.getContext().getValueStack().set("byctmId",byctmId);
        return "findByctmId";
    }

    public String cancelOrder(){
        //解决房间不可重复预订的问题时记的注释：现在 房间状态由每次查询时 实时确定 ，不再在下单时更改

//        //先更改房间状态(因为只穿过来一个oid 的参数，并没有封装其他的值，所以需要再查一遍)
//        Orders byId = orderService.findById(orders.getOid());
//        roomService.updateStatus(byId.getRoom());

//       老师问取消订单的时候 积分会不会取消
//          1先查出这个订单
        Orders orders1 = orderService.findById(orders.getOid());
//        2再查出这个会员
        Customer customer = (Customer) ActionContext.getContext().getSession().get("byName");

        Member member = memberService.findByCst(customer);
        if(member!=null&&member.getMemtype()==1){
            //        3然后将会员的积分减去这个订单的分数
            member.setScore(member.getScore()-(int)(orders1.getMony()*0.1));
        }
        if(member!=null&&member.getMemtype()==2){
//            如果是储值型的，就把钱还给人家
            member.setRemain(member.getRemain()+orders1.getMony());
        }


        //删除订单
        orderService.deleteById(orders.getOid());
        //通知老板 ，有人取消订单（已付款），联系退款
        return "topay";
        //返回 topay 是为了在 xml中省事
    }
    public String pay(){
//        //先更改房间状态(因为只穿过来一个oid 的参数，并没有封装其他的值，所以需要再查一遍)
        String oid = orders.getOid();
//        Orders byId = orderService.findById(oid);
//        roomService.updateStatus(byId.getRoom());
        //再改变订单状态
        orderService.updateStatus(oid);
        return "gopay";
    }

    public String check(){
//        check有退房 的意思
        //先更改房间状态(因为只穿过来一个oid 的参数，并没有封装其他的值，所以需要再查一遍)
        String oid = orders.getOid();

//        Orders byId = orderService.findById(oid);
//        roomService.updateStatus(byId.getRoom());

        //再使订单成为  完成状态
        orderService.updateOver(oid);
        return "check";
    }


}
