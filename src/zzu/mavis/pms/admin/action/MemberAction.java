package zzu.mavis.pms.admin.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import zzu.mavis.pms.member.domain.Member;
import zzu.mavis.pms.member.service.MemberService;
import zzu.mavis.pms.order.domain.Orders;
import zzu.mavis.pms.order.service.OrderService;

import java.util.List;

public class MemberAction extends ActionSupport  {
    private MemberService memberService;

    public void setMemberService(MemberService memberService) {
        this.memberService = memberService;
    }

    //查询所有1 型会员，即积分型会员
    public String findAll1(){
        List<Member> memberList = memberService.findAll1();
        ActionContext.getContext().getValueStack().set("memberList",memberList);
        return "findAll";
    }

    //查询所有2型会员，即积分型会员
    public String findAll2(){
        List<Member> memberList = memberService.findAll2();
        ActionContext.getContext().getValueStack().set("memberList",memberList);
        return "findAll";
    }

}
