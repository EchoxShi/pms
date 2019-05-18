package zzu.mavis.pms.customer.service;

import zzu.mavis.pms.customer.domain.Customer;

public interface CustomerService {
    //添加一个顾客
    public void add(Customer customer);
    //根据登录名查找
    public Customer findByName(Customer customer);
    //更新 customer 信息
    public void update(Customer customer);
    public Customer findByloginName(String  name);
    public Customer findById(String id);

}
