package zzu.mavis.pms.customer.dao;

import zzu.mavis.pms.customer.domain.Customer;

public interface CustomerDao   {
    //增加一个客户
    public void add(Customer customer);
    //根据登录名查找
    public Customer findByName(Customer customer);
}
