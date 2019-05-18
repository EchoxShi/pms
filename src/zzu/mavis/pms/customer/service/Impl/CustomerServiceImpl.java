package zzu.mavis.pms.customer.service.Impl;

import zzu.mavis.pms.customer.dao.CustomerDao;
import zzu.mavis.pms.customer.domain.Customer;
import zzu.mavis.pms.customer.service.CustomerService;

public class CustomerServiceImpl implements CustomerService {
    private CustomerDao customerDao;

    public void setCustomerDao(CustomerDao customerDao) {
        this.customerDao = customerDao;
    }

    @Override
    public void add(Customer customer) {
       customerDao.add(customer);
    }

    @Override
    public Customer findByName(Customer customer) {
        return customerDao.findByName(customer);
    }

    @Override
    public void update(Customer customer) {
        customerDao.update(customer);
    }

    @Override
    public Customer findByloginName(String name) {
       return customerDao.findByloginName(name);
    }

    @Override
    public Customer findById(String id) {
        return customerDao.findById(id);
    }
}
