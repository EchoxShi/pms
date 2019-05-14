package zzu.mavis.pms.RoomType.domain;

import zzu.mavis.pms.Room.domain.Room;

import java.util.HashSet;
import java.util.Set;

public class RoomType {
    private Integer  roomTypeId;
    private String roomTypeName;
//    一对多 ： 一种类型 对 多个房间
    private Set<Room> rooms= new HashSet<>();
}
