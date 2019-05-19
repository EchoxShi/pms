package zzu.mavis.pms.order.dao.impl;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import zzu.mavis.pms.order.dao.OrderDao;
import zzu.mavis.pms.order.domain.Orders;
import zzu.mavis.pms.room.domain.Room;

import java.util.List;

public class OrderDaoImpl extends HibernateDaoSupport implements OrderDao {
    @Override
    public void add(Orders orders) {

        this.getHibernateTemplate().save(orders);
    }

    @Override
    public List<Orders> findByctmId(String ctmId) {
        List<Orders> list = (List<Orders>) this.getHibernateTemplate().findByCriteria(DetachedCriteria.forClass(Orders.class).add(Restrictions.eq("customer.ctmId", ctmId)));
        return list;
    }

    @Override
    public void deleteById(String oid) {
        Orders byId = findById(oid);
        this.getHibernateTemplate().delete(byId);
    }

    @Override
    public Orders findById(String oid) {
        List<Orders> list = (List<Orders>) this.getHibernateTemplate().findByCriteria(DetachedCriteria.forClass(Orders.class).add(Restrictions.eq("oid", oid)));
        if(list.size()>0){
            return list.get(0);
        }
        return null;
    }

    @Override
    public void updateStatus(String oid) {
        Orders byId = findById(oid);
        if(byId.getPayStatus()==0){
            byId.setPayStatus(1);
        }else {
            byId.setPayStatus(0);
        }
        this.getHibernateTemplate().update(byId);
    }

    @Override
    public void updateOver(String oid) {
        Orders byId = findById(oid);
        if(byId.getOver()==0){
            byId.setOver(1);
        }else {
            byId.setOver(0);
        }
        this.getHibernateTemplate().update(byId);
    }

    //无条件查询出所有订单
    public List<Orders> findAll(){
        List<Orders> allOrders = (List<Orders>) this.getHibernateTemplate().findByCriteria(DetachedCriteria.forClass(Orders.class));
        return allOrders;
    }

    @Override
    public List<Orders> findByRoomId(Room r) {
        DetachedCriteria criteria = DetachedCriteria.forClass(Orders.class);
        criteria.add(Restrictions.eq("room.roomId",r.getRoomId()));
        return (List<Orders>) this.getHibernateTemplate().findByCriteria(criteria);
    }

}
