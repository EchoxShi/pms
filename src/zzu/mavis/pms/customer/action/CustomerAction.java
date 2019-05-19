package zzu.mavis.pms.customer.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.util.ValueStack;
import zzu.mavis.pms.room.domain.Room;
import zzu.mavis.pms.room.service.RoomService;
import zzu.mavis.pms.roomType.domain.RoomType;
import zzu.mavis.pms.roomType.service.RoomTypeService;
import zzu.mavis.pms.customer.domain.Customer;
import zzu.mavis.pms.customer.service.CustomerService;

import java.util.Date;
import java.util.List;

public class CustomerAction extends ActionSupport  implements ModelDriven<Customer> {
    private CustomerService customerService;
    private Customer customer = new Customer();

    private RoomService roomService;

    public void setRoomService(RoomService roomService) {
        this.roomService = roomService;
    }
    private RoomTypeService roomTypeService;

    public void setRoomTypeService(RoomTypeService roomTypeService) {
        this.roomTypeService = roomTypeService;
    }

    public void setCustomerService(CustomerService customerService) {
        this.customerService = customerService;
    }

    @Override
    public Customer getModel() {
        return customer;
    }
//手动校验器
    public void  validateRegiste(){
        System.out.println("进行登录校验");
        if(customer.getLoginName().trim().length()<3){
            addActionMessage("用户名长度不能小于3位");
        }
        if(customer.getLoginPassword().trim().length()<6){
            addActionMessage("密码长度不能小于6位！");
        }
        if(customer.getPhone().length()!=11){
            addActionMessage("请输入合法手机号！");
        }
        if(!customer.getEmail().trim().contains("@")){
            addActionMessage("请输入合法邮箱地址，以便联系！");
        }

    }
    public String registe(){
        if(getActionMessages().size()>0){
            return "registe";
        }
        System.out.println("registe");
        //查找看是否已经注册过
        Customer findCustomer =customerService.findByName(customer);
        if(null!=findCustomer&& findCustomer.getLoginPassword()==customer.getLoginPassword()){
            addActionMessage("此用户已注册过，请直接登录！");
            return "tologin";
        }
        customerService.add(customer);
        addActionMessage("注册成功！请登录");
        return "tologin";
    }
    public String login(){
        Customer byName = customerService.findByName(customer);


        if(null==byName){
            addActionMessage("该用户不存在！");
            return "tologin";
        }
        if( !customer.getLoginPassword().trim().equals(byName.getLoginPassword())){
           addActionMessage("密码错误！");
           return "tologin";
        }
        //把用户信息放入session
        ActionContext.getContext().getSession().put("byName",byName);
        return "UILogin";

    }

    public String UILogin(){
        //查询所有的房间，放入值栈
        List<Room> roomList = roomService.findAll();
        ActionContext.getContext().getValueStack().set("roomList",roomList);
        System.out.println(roomList.size()+roomList.get(0).toString());
        //查询所有的房间类型，放入值栈
        List<RoomType> roomTypeList = roomTypeService.findAll();
        ActionContext.getContext().getValueStack().set("roomTypeList",roomTypeList);
        return "login";
    }
}
