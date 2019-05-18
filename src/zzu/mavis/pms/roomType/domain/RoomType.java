package zzu.mavis.pms.roomType.domain;

import zzu.mavis.pms.room.domain.Room;

import java.util.HashSet;
import java.util.Set;

public class RoomType {
    private String   roomTypeId;
    private String roomTypeName;
//    一对多 ： 一种类型 对 多个房间
    private Set<Room> rooms= new HashSet<>();

    public String getRoomTypeId() {
        return roomTypeId;
    }

    public void setRoomTypeId(String roomTypeId) {
        this.roomTypeId = roomTypeId;
    }

    public String getRoomTypeName() {
        return roomTypeName;
    }

    public void setRoomTypeName(String roomTypeName) {
        this.roomTypeName = roomTypeName;
    }

    public Set<Room> getRooms() {
        return rooms;
    }

    public void setRooms(Set<Room> rooms) {
        this.rooms = rooms;
    }
}
