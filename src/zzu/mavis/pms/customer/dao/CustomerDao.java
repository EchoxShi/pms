package zzu.mavis.pms.customer.dao;

import zzu.mavis.pms.customer.domain.Customer;

public interface CustomerDao   {
    //增加一个客户
    public void add(Customer customer);
    //根据登录名查找
    public Customer findByName(Customer customer);
    //更新 customer 信息
    public void update(Customer customer);
    public Customer findByloginName(String  name);

    public Customer findById(String id);


}
