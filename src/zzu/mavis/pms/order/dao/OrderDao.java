package zzu.mavis.pms.order.dao;


import zzu.mavis.pms.order.domain.Orders;

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


}
