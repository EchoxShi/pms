package zzu.mavis.pms.member.domain;

import zzu.mavis.pms.customer.domain.Customer;

import java.util.Date;

public class Member  {
    //会员  和 客户 一对一关系
//    private Date DateOfOpen;//会员开通时间
//    private Double totalMony;
//    private Double remainMony;
//为省事 假设只充一次，不记录 充值记录
    private String memid;
    private int  memtype ;//会员类型 1 积分 2储值 普通会员（非会员）默认值0
    private Double mon;//储值型会员的钱数
    private int score;//积分型会员的积分                           默认值0
    private Double remain;//剩余钱数
    private Customer customer;//一个会员对应一个customer

    public Double getRemain() {
        return remain;
    }

    public void setRemain(Double remain) {
        this.remain = remain;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public String getMemid() {
        return memid;
    }

    public void setMemid(String memid) {
        this.memid = memid;
    }

    public int getMemtype() {
        return memtype;
    }

    public void setMemtype(int memtype) {
        this.memtype = memtype;
    }

    public Double getMon() {
        return mon;
    }

    public void setMon(Double mon) {
        this.mon = mon;
    }
}
