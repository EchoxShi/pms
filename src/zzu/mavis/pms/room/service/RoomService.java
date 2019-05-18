package zzu.mavis.pms.room.service;

import zzu.mavis.pms.room.domain.Room;

import java.util.List;

public interface RoomService {
    public void add(Room room);
    public List<Room> findAll();
    public List<Room> findById(String id);
    public Room findByRoomId(String id);
    public void updateStatus(Room room);

}
