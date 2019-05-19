package zzu.mavis.pms.member.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import zzu.mavis.pms.customer.domain.Customer;
import zzu.mavis.pms.member.domain.Member;
import zzu.mavis.pms.member.service.MemberService;
import zzu.mavis.pms.order.domain.Orders;
import zzu.mavis.pms.order.service.OrderService;

import java.util.List;

public class MemberAction extends ActionSupport  implements ModelDriven<Member> {
    private MemberService memberService;
    private OrderService orderService;

    public void setOrderService(OrderService orderService) {
        this.orderService = orderService;
    }

    public void setMemberService(MemberService memberService) {
        this.memberService = memberService;
    }

    private Member member= new Member();
    @Override
    public Member getModel() {
        return member;
    }


    public String openMem(){
        //先得到 customer的信息
        Customer byName = (Customer) ActionContext.getContext().getSession().get("byName");
        //判断是否已经注册了会员
        Member memberbyCst = memberService.findByCst(byName);
        if(null!=memberbyCst){
            ActionContext.getContext().getValueStack().push(byName);
            addActionMessage("您已经注册过会员！");
            return "UImymember";
        }

        //如果 memtype=1
        if(member.getMemtype()==1){
            //写入 memeber表中 ，memtype =1; score初始化=0,mon==0
            member.setScore(0);
            member.setMon(0.0);
            member.setCustomer(byName);
            memberService.add(member);
            return "UILogin";
        }else if (member.getMemtype()==2){
            //如果 memtype=2
            //写入 memeber表中 ，memtype =2; mon =表单上传过来的值=remain，score初始化=0
            member.setScore(0);
            member.setRemain(member.getMon());
        }
        member.setCustomer(byName);
        memberService.add(member);
        return "openMonMem";
    }
    public String  findByCst(){
        Customer byName = (Customer) ActionContext.getContext().getSession().get("byName");
        Member memberbyCst = memberService.findByCst(byName);
        if(null==memberbyCst){
            addActionMessage("你未开通会员");
        }
        ActionContext.getContext().getValueStack().push(memberbyCst);
        return "findByCst";
    }
    public String  UImymember(){
        Customer customer = (Customer) ActionContext.getContext().getSession().get("byName");
        //查出所有的order
        List<Orders> orders = orderService.findByctmId(customer.getCtmId());
        ActionContext.getContext().getValueStack().set("orders",orders);
        //查出该customer的会员情况
        Member member = memberService.findByCst(customer);
        ActionContext.getContext().getValueStack().set("member",member);
        return "UImymember";
    }

}
