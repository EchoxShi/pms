package zzu.mavis.pms.customer.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.components.ActionMessage;
import zzu.mavis.pms.customer.domain.Customer;
import zzu.mavis.pms.customer.service.CustomerService;

public class CustomerAction extends ActionSupport  implements ModelDriven<Customer> {
    private CustomerService customerService;
    private Customer customer = new Customer();

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
        if(findCustomer.getLoginPassword()==customer.getLoginPassword()){
            addActionMessage("此用户已注册过，请直接登录！");
            return "login";
        }
        addActionMessage("注册成功！请登录");
        customerService.add(customer);
        return "login";
    }
}
