package zzu.mavis.pms.roomType.dao;

import zzu.mavis.pms.roomType.domain.RoomType;

import java.util.List;

public interface RoomTypeDao {
    public void add(RoomType roomType);
    public List<RoomType> findAll();
    public void deleteById(String id);
    public void update(RoomType roomType);
    public RoomType findById(String id);
}
