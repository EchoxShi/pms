package zzu.mavis.pms.order.service;

import zzu.mavis.pms.order.domain.Orders;

import java.util.List;

public interface OrderService {
    public void add(Orders orders);

    public List<Orders> findByctmId(String ctmId);
    //根据 订单ID 删除订单（用户取消ID）
    public void deleteById(String oid);
    public Orders findById(String oid);
    //改变订单状态
    public void updateStatus(String oid);
    public void updateOver(String oid) ;

}
