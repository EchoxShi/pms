package zzu.mavis.pms.admin.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import zzu.mavis.pms.order.domain.Orders;
import zzu.mavis.pms.order.service.OrderService;

import java.util.List;

public class AdminAction extends ActionSupport{
    private String loginName;
    private String password;

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String adminLogin (){
        System.out.println(loginName);
        System.out.println(password);
        if (loginName!=null&&loginName.equals("admin")&&password.equals("123")){
            ActionContext.getContext().getSession().put("byName","ok");
        }
        return "login";

    }
}
