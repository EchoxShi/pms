package zzu.mavis.pms.order.service.impl;

import com.opensymphony.xwork2.ActionContext;
import zzu.mavis.pms.customer.domain.Customer;
import zzu.mavis.pms.order.dao.OrderDao;
import zzu.mavis.pms.order.domain.Orders;
import zzu.mavis.pms.order.service.OrderService;
import zzu.mavis.pms.room.dao.RoomDao;
import zzu.mavis.pms.room.domain.Room;
import zzu.mavis.pms.room.service.RoomService;

import java.util.List;

public class OrderServiceImpl implements OrderService {
    private OrderDao orderDao;


    public void setOrderDao(OrderDao orderDao) {
        this.orderDao = orderDao;
    }

    @Override
    public void add(Orders orders) {
        orderDao.add(orders);
    }

    @Override
    public List<Orders> findByctmId(String ctmId) {
        return  orderDao.findByctmId(ctmId);
    }

    @Override
    public void deleteById(String oid) {
        //删除订单
        orderDao.deleteById(oid);

    }

    @Override
    public Orders findById(String oid) {
        Orders byId = orderDao.findById(oid);
        return byId;
    }

    @Override
    public void updateStatus(String oid) {
        orderDao.updateStatus(oid);
    }

    @Override
    public void updateOver(String oid) {
        orderDao.updateOver(oid);
    }


}
