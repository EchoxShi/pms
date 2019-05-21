package zzu.mavis.pms.room.service.impl;

import zzu.mavis.pms.order.dao.OrderDao;
import zzu.mavis.pms.order.domain.Orders;
import zzu.mavis.pms.pages.PageBean;
import zzu.mavis.pms.room.dao.RoomDao;
import zzu.mavis.pms.room.domain.Room;
import zzu.mavis.pms.room.service.RoomService;

import java.util.Date;
import java.util.List;

public class RoomServiceImpl  implements RoomService {
    private RoomDao roomDao;
    private OrderDao orderDao;

    public void setOrderDao(OrderDao orderDao) {
        this.orderDao = orderDao;
    }

    public void setRoomDao(RoomDao roomDao) {
        this.roomDao = roomDao;
    }
    @Override
    public void add(Room room) {
        roomDao.add(room);
    }

    @Override
    public List<Room> findAll() {
        return roomDao.findAll();
    }

    @Override
    public List<Room> findById(String  id) {
        return roomDao.findById(id);
    }

    @Override
    public Room findByRoomId(String id){
        return roomDao.findByRoomId(id);
    }

    @Override
    public void updateStatus(Room room) {
        roomDao.updateStatus(room);
    }

    @Override
    public PageBean<Room> findAllTP(int pageNum, int pageSize) {
        //pageNum和PageSize是从页面穿过来的，然后调用dao的getTotalRecord和findall得到  totalrecord 和data 就能封装好一个
        //pageBean来返回给  jsp页面了
        int totalRecord = roomDao.getTotalRecord();
        PageBean<Room> pageBean = new PageBean<Room>(pageNum,pageSize,totalRecord );
        List<Room> data = roomDao.findAllToPage(pageBean.getStartIndex(),pageBean.getPageSize());
        pageBean.setData(data);
        return pageBean;
    }

    @Override
    public void deleteByRoomId(String id) {
        roomDao.deleteByRoomId(id);
    }

    @Override
    public void update(Room room) {
        roomDao.update(room);
    }


    //根据 查询出来的所有订单的时间 来改变每个房间的状态
    //参数 ：searchDayIn  页面上传过来的搜索的起始时间  searchDayOut  截止时间
/*
    public void updateStatusByOrderTime(Date searchDayIn,Date searchDayOut){
        System.out.println(orderDao);
        List<Orders> ordersList = orderDao.findAll();
//        这个要改的房间状态的集合是在订单里的那些房间，不在订单里的那些房间的状态保持默认值（可预订就好了）

//        Iterator<Orders> iterator= ordersList.iterator();
        //查询所有订单，再 遍历 订单，订单的入住时间在searchDayOut之后 ，房间状态设为1，可预订
        // 订单的离店时间时间在searchDayIn之前，房间状态设为1，可预订，剩下的所有其他设为0，不可预订

        //或者反过来  遍历订单找找不可预订的， 设为不可预订，其他的都可预订
//        也就是订单的入住时间在searchDayOut之后 ，房间状态设为1，可预订
        for (Orders o :ordersList){
            if(o.getDayin().compareTo(searchDayOut)>0 ||o.getDayout().compareTo(searchDayIn)<0) {
                //根据订单里的房间ID查出对应的房间
                Room room = findByRoomId(o.getRoom().getRoomId());
                //设置房间状态值
                room.setStatus(1);
                System.out.println("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
                //更新房间
                roomDao.update(room);
            }
//            剩下的所有其他设为0，不可预订
            Room room1= findByRoomId(o.getRoom().getRoomId());
            room1.setStatus(0);
            roomDao.update(room1);

         }

    }
*/

}
