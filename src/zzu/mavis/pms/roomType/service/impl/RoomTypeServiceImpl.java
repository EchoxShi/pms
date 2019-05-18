package zzu.mavis.pms.roomType.service.impl;

import zzu.mavis.pms.roomType.dao.RoomTypeDao;
import zzu.mavis.pms.roomType.domain.RoomType;
import zzu.mavis.pms.roomType.service.RoomTypeService;

import java.util.List;

public class RoomTypeServiceImpl implements RoomTypeService {
    private RoomTypeDao roomTypeDao;

    public void setRoomTypeDao(RoomTypeDao roomTypeDao) {
        this.roomTypeDao = roomTypeDao;
    }

    @Override
    public List<RoomType> findAll() {
        return roomTypeDao.findAll();

    }
}
