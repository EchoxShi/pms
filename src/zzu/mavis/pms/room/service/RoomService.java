package zzu.mavis.pms.room.service;

import zzu.mavis.pms.pages.PageBean;
import zzu.mavis.pms.room.domain.Room;

import java.util.Date;
import java.util.List;

public interface RoomService {
    public void add(Room room);
    public List<Room> findAll();
    public List<Room> findById(String id);
    public Room findByRoomId(String id);
    public void updateStatus(Room room);
    /*public void updateStatusByOrderTime(Date searchDayIn, Date searchDayOut);*/
//以下用于分页
    public PageBean<Room> findAllTP(int pageNum, int pageSize);

   public void deleteByRoomId(String id);
    public void update(Room room) ;

    }
