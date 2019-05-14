package zzu.mavis.pms.customer.dao.Impl;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import zzu.mavis.pms.customer.dao.CustomerDao;
import zzu.mavis.pms.customer.domain.Customer;

import java.util.List;

public class CustomerDaoImpl extends HibernateDaoSupport implements  CustomerDao {

    @Override
    public void add(Customer customer) {
            //调用模板保存
            this.getHibernateTemplate().save(customer);
    }

    public Customer findByName(Customer customer){
        DetachedCriteria criteria=DetachedCriteria.forClass(Customer.class);
        criteria.add(Restrictions.eq("loginName",customer.getLoginName()));
        List<Customer> result = (List<Customer>) this.getHibernateTemplate().findByCriteria(criteria);
        if(result.size()==1){
            return result.get(0);
        }
        return null;
    }
}
