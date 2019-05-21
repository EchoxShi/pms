package zzu.mavis.pms.roomType.service;

import zzu.mavis.pms.roomType.domain.RoomType;

import java.util.List;

public interface RoomTypeService {
    public List<RoomType> findAll();
    public void delete(String id);
    public RoomType findById(String id);
    public void add(RoomType roomType);

}
