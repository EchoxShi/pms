package zzu.mavis.pms.order.service.impl;

import org.aspectj.weaver.ast.Or;
import zzu.mavis.pms.order.dao.OrderDao;
import zzu.mavis.pms.order.domain.Orders;
import zzu.mavis.pms.order.service.OrderService;
import zzu.mavis.pms.room.domain.Room;

import java.util.Date;
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

    @Override
    public List<Orders> findAll() {
        return orderDao.findAll();
    }

    @Override
    public boolean isOrdered(Date searchDayIn, Date searchDayOut, Room r) {
        boolean flag = false;
        List<Orders> orderList = orderDao.findByRoomId(r);
        //有的房间可能没有订单，所以orderList可能是空的
        if(null==orderList){
            return flag==false;
        }
        for(Orders o:orderList){
            long time1 = o.getDayin().getTime();
            long time2 = o.getDayout().getTime();
//这个searchDayIn 一次action就不能用了
            long in = searchDayIn.getTime();
            long out = searchDayOut.getTime();
            if((in>=time1&& in <time2) || (out>=time1&& out <time2)){
                flag = true;
                break;
            }
        }
        return flag;
    }
//未付款，   payStatus 1 代表已完成付款，0 代表未完成付款，
    // ，over 1 代表该订单已经完成，0代表该订单未完成,默认为0

    public List<Orders> findAllNoPay(){
        return orderDao.findAllNoPay();

    }

    public List<Orders> findAllOver(){
        return orderDao.findAllOver();
    }

    public List<Orders> findAllDoing(){
        return orderDao.findAllDoing();
    }

}
