package zzu.mavis.pms.room.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import org.hibernate.criterion.Order;
import zzu.mavis.pms.order.service.OrderService;
import zzu.mavis.pms.room.domain.Room;
import zzu.mavis.pms.room.service.RoomService;
import zzu.mavis.pms.roomType.domain.RoomType;
import zzu.mavis.pms.roomType.service.RoomTypeService;

import java.util.Date;
import java.util.List;

public class RoomAction extends ActionSupport implements ModelDriven<Room> {
    //查询房间时间的字段
    private Date searchDayIn;
    private Date searchDayOut;
    private OrderService orderService;

    public void setOrderService(OrderService orderService) {
        this.orderService = orderService;
    }
    //    private File pic;
//    private String picFileName;
//    private String picContentType;

    public Date getSearchDayIn() {
        return searchDayIn;
    }

    public void setSearchDayIn(Date searchDayIn) {
        this.searchDayIn = searchDayIn;
    }

    public Date getSearchDayOut() {
        return searchDayOut;
    }

    public void setSearchDayOut(Date searchDayOut) {
        this.searchDayOut = searchDayOut;
    }

    private RoomService roomService;

    public void setRoomService(RoomService roomService) {
        this.roomService = roomService;
    }

    private RoomTypeService roomTypeService;

    public void setRoomTypeService(RoomTypeService roomTypeService) {
        this.roomTypeService = roomTypeService;
    }
    private Room room= new Room();
    @Override
    public Room getModel() {
        return room;
    }

//    public File getPic() {
//        return pic;
//    }
//
//    public void setPic(File pic) {
//        this.pic = pic;
//    }
//
//    public String getPicFileName() {
//        return picFileName;
//    }
//
//    public void setPicFileName(String picFileName) {
//        this.picFileName = picFileName;
//    }
//
//    public String getPicContentType() {
//        return picContentType;
//    }
//
//    public void setPicContentType(String picContentType) {
//        this.picContentType = picContentType;
//    }



//新的解决房间不可多次预订的问题
//放弃这种方法
    /*public void updateStatusByOrderTime(){
//        (房间状态 1 可预订  0 不可预订)
       //第一步 ：先得到 要查询的日期  默认是今天；并且默认 两个时间都必须填
        if(null==searchDayIn&&null==searchDayOut){
           Date date= new Date();
           searchDayIn=date;
           searchDayOut=new Date(searchDayIn.getTime()+24*60*60*1000);
            //查询所有订单，再 遍历 订单，订单的入住时间在searchDayOut之后 ，房间状态设为1，可预订
            // 订单的离店时间时间在searchDayIn之前，房间状态设为1，可预订，剩下的所有其他设为0，不可预订
        }
        roomService.updateStatusByOrderTime(searchDayIn,searchDayOut);
    }*/

    public String  findAll(){
        //单纯返回 all ，不管状态
        List<Room> roomList = roomService.findAll();
        if(roomList.size()>0){
            ActionContext.getContext().getValueStack().set("roomList",roomList);
        }else {
            addActionMessage("暂无数据，敬请期待");
        }
//查询所有类型
        List<RoomType> roomTypeList = roomTypeService.findAll();
        if(roomTypeList.size()>0){
            ActionContext.getContext().getValueStack().set("roomTypeList",roomTypeList);
        }else {
            addActionMessage("暂无数据，敬请期待");
        }
        return "findAll";
    }
    public String  findAllOrderOrNot(){
        //为使你在页面上输入的搜索日期可以多次使用，我把它取出来放在session中，然后等我用的时候我再去session取
        ActionContext.getContext().getSession().put("searchDayIn",searchDayIn);
        ActionContext.getContext().getSession().put("searchDayOut",searchDayOut);

        Date searchDayIn= (Date) ActionContext.getContext().getSession().get("searchDayIn");
        Date searchDayOut= (Date) ActionContext.getContext().getSession().get("searchDayOut");

        //查询所有的房间类型
        List<RoomType> roomTypeList = roomTypeService.findAll();
        ActionContext.getContext().getValueStack().set("roomTypeList",roomTypeList);

        List<Room> all = roomService.findAll();
        for (Room r:all){
            boolean ordered = orderService.isOrdered(searchDayIn, searchDayOut, r);
            if(ordered){
                System.out.println("ordered:"+r.getRoomId());
                r.setStatus(0);
            }else{
                System.out.println("no ordered:"+r.getRoomId());
                r.setStatus(1);
            }
        }
        ActionContext.getContext().getValueStack().set("roomList",all);
        return "findAllOrderOrNot";
    }

    public String  findAllOrderOrNotByRoomType(){
        Date searchDayIn= (Date) ActionContext.getContext().getSession().get("searchDayIn");
        Date searchDayOut= (Date) ActionContext.getContext().getSession().get("searchDayOut");

        System.out.println(searchDayIn+"qqqqqqqqqqqqqqqqqqqqqqqqq");
        System.out.println(searchDayOut+"qqqqqqqqqqqqqqqqqqqqqqqqq");

        //查询所有的房间类型
        List<RoomType> roomTypeList = roomTypeService.findAll();
        ActionContext.getContext().getValueStack().set("roomTypeList",roomTypeList);

        List<Room> all = roomService.findById(room.getRoomType().getRoomTypeId());
        System.out.println(all.size()+"qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq");

        for (Room r:all){
            boolean ordered = orderService.isOrdered(searchDayIn, searchDayOut, r);
            if(ordered){
                System.out.println("ordered:"+r.getRoomId());
                r.setStatus(0);
            }else{
                System.out.println("no ordered:"+r.getRoomId());
                r.setStatus(1);
            }
        }
        ActionContext.getContext().getValueStack().set("roomList",all);
        return "findAllOrderOrNotByRoomType";
    }


    public String findById(){
        //根据房间类型查询该类型所有房间
        List<Room> roomListById = roomService.findById(room.getRoomType().getRoomTypeId());
        ActionContext.getContext().getValueStack().set("roomList",roomListById);

        List<RoomType> roomTypeList = roomTypeService.findAll();
        ActionContext.getContext().getValueStack().set("roomTypeList",roomTypeList);
        return "findById";
    }
//    public String findRoomById(){
//        Room room1 = roomService.findByRoomId(this.room.getRoomId());
//        ActionContext.getContext().put("room", room1);
//        return "findRoomById";
//    }
    public String UIPreserve(){
        ActionContext.getContext().getValueStack().
                push(ActionContext.getContext().getSession().get("byName"));
        Room room2 = roomService.findByRoomId(this.room.getRoomId());
        ActionContext.getContext().put("room", room2);
        return "UIPreserve";

    }
}
