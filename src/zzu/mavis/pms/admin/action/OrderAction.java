package zzu.mavis.pms.admin.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import zzu.mavis.pms.order.domain.Orders;
import zzu.mavis.pms.order.service.OrderService;

import java.util.List;

public class OrderAction extends ActionSupport implements ModelDriven<Orders> {
    private OrderService orderService;
    private Orders orders;
    public void setOrderService(OrderService orderService) {
        this.orderService = orderService;
    }
    @Override
    public Orders getModel() {
        return orders;
    }
    public String findAll(){
        System.out.println("aaaaaaaaaaa");
        List<Orders> ordersList = orderService.findAll();
        ActionContext.getContext().getValueStack().set("ordersList",ordersList);
        return "findAll";
    }

    public String  findAllNoPay(){
        List<Orders> ordersList = orderService.findAllNoPay();
        if(null==ordersList){
            addActionMessage("暂无数据");
        }
        ActionContext.getContext().getValueStack().set("ordersList",ordersList);
        return "findAllNoPay";
    }

    public String findAllOver(){
        List<Orders> ordersList = orderService.findAllOver();
        if(null==ordersList){
            addActionMessage("暂无数据");
        }
        ActionContext.getContext().getValueStack().set("ordersList",ordersList);
        return "findAllOver";
    }

    public String findAllDoing(){
        List<Orders> ordersList = orderService.findAllDoing();
        if(null==ordersList){
            addActionMessage("暂无数据");
        }
        ActionContext.getContext().getValueStack().set("ordersList",ordersList);
        return "findAllDoing";
    }


}
