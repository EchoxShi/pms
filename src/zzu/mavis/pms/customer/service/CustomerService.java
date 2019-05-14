package zzu.mavis.pms.customer.service;

import zzu.mavis.pms.customer.domain.Customer;

public interface CustomerService {
    //添加一个顾客
    public void add(Customer customer);
    //根据登录名查找
    public Customer findByName(Customer customer);

}
