package zzu.mavis.pms.Member.domain;

import zzu.mavis.pms.customer.domain.Customer;

import java.util.Date;

public class Member extends Customer {
    //是customer 的子类，写在同一张表上
    //member特有的属性是：
    private Date DateOfOpen;//会员开通时间
    private Double totalMony;
    private Double remainMony;

    public Date getDateOfOpen() {
        return DateOfOpen;
    }

    public void setDateOfOpen(Date dateOfOpen) {
        DateOfOpen = dateOfOpen;
    }

    public Double getTotalMony() {
        return totalMony;
    }

    public void setTotalMony(Double totalMony) {
        this.totalMony = totalMony;
    }

    public Double getRemainMony() {
        return remainMony;
    }

    public void setRemainMony(Double remainMony) {
        this.remainMony = remainMony;
    }
}
