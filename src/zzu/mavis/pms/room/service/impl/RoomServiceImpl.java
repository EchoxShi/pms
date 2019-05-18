package zzu.mavis.pms.room.service.impl;

import zzu.mavis.pms.room.domain.Room;
import zzu.mavis.pms.room.dao.RoomDao;
import zzu.mavis.pms.room.service.RoomService;

import java.util.List;

public class RoomServiceImpl  implements RoomService {
    private RoomDao roomDao;

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


}
