package zzu.mavis.pms.room.dao;

import zzu.mavis.pms.order.domain.Orders;
import zzu.mavis.pms.room.domain.Room;

import java.util.List;

public interface RoomDao {
    public void add(Room room);
    //用于主页面显示所有房间
    public List<Room> findAll();
    //用于单独查看某个类型的所有房间
    public List<Room> findById(String id);
    public void delete(Room room);
    public void update(Room room);
    //改变room的status
    public void updateStatus(Room room);

    public Room findByRoomId(String id);

}
