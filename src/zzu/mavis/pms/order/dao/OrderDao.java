package zzu.mavis.pms.order.dao;


import zzu.mavis.pms.order.domain.Orders;
import zzu.mavis.pms.room.domain.Room;

import java.util.List;

public interface OrderDao  {
    public void add(Orders orders);
    //根据 customer 的 ID 查询 order中 ctid 是当前顾客ID的
    public List<Orders> findByctmId(String ctmId);
    //根据 订单ID 删除订单（用户取消ID）
    public void deleteById(String oid);

    public Orders findById(String oid);
//改变订单状态
    public void updateStatus(String oid);
    public void updateOver(String oid) ;
//无条件查询出所有订单
    public List<Orders> findAll();
    public List<Orders> findByRoomId(Room r);

    //未付款，   payStatus 1 代表已完成付款，0 代表未完成付款，
    // ，over 1 代表该订单已经完成，0代表该订单未完成,默认为0

    public List<Orders> findAllNoPay();

    public List<Orders> findAllOver();

    public List<Orders> findAllDoing();

}
