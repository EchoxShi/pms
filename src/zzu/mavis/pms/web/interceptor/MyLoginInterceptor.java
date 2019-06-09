package zzu.mavis.pms.web.interceptor;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class MyLoginInterceptor extends MethodFilterInterceptor {
    @Override
    protected String doIntercept(ActionInvocation actionInvocation) throws Exception {
        Object customer = ActionContext.getContext().getSession().get("byName");
        if(null==customer){
            //没登录
            //获取当前的action
            Object action = actionInvocation.getAction();
            if(action instanceof ActionSupport){
                ((ActionSupport) action).addFieldError("","请去登录");
            }
            return "tologin";
        }
        //放行
        return actionInvocation.invoke();
    }
}
