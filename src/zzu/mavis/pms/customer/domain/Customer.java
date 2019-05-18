package zzu.mavis.pms.customer.domain;

import zzu.mavis.pms.order.domain.Orders;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class Customer {
    //注册时给出
    private String ctmId;
    private String loginName;
    private String loginPassword;
    private String phone;
    private String email;

    //订房 时给出
    private String ctmName;
    private String IdCard;
    private Date birthday;
    private String sex;
//一个顾客  有 多个订单
    private Set<Orders> ordersSet =new HashSet<>();

    public Set<Orders> getOrdersSet() {
        return ordersSet;
    }

    public void setOrdersSet(Set<Orders> ordersSet) {
        this.ordersSet = ordersSet;
    }
    //    private String type;//会员是顾客的子类

//    public String getType() {
//        return type;
//    }
//
//    public void setType(String type) {
//        this.type = type;
//    }


    public String getCtmId() {
        return ctmId;
    }

    public void setCtmId(String ctmId) {
        this.ctmId = ctmId;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getLoginPassword() {
        return loginPassword;
    }

    public void setLoginPassword(String loginPassword) {
        this.loginPassword = loginPassword;
    }

    public String getCtmName() {
        return ctmName;
    }

    public void setCtmName(String ctmName) {
        this.ctmName = ctmName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getIdCard() {
        return IdCard;
    }

    public void setIdCard(String idCard) {
        IdCard = idCard;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "ctmId='" + ctmId + '\'' +
                ", loginName='" + loginName + '\'' +
                ", loginPassword='" + loginPassword + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", ctmName='" + ctmName + '\'' +
                ", IdCard='" + IdCard + '\'' +
                ", birthday=" + birthday +
                ", sex='" + sex + '\'' +
                ", ordersSet=" + ordersSet +
                '}';
    }
}
