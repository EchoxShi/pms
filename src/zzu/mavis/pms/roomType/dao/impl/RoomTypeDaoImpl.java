package zzu.mavis.pms.roomType.dao.impl;

import org.hibernate.Session;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import zzu.mavis.pms.roomType.dao.RoomTypeDao;
import zzu.mavis.pms.roomType.domain.RoomType;

import java.util.List;

public class RoomTypeDaoImpl extends HibernateDaoSupport implements RoomTypeDao {
    @Override
    public void add(RoomType roomType) {
        this.getHibernateTemplate().save(roomType);
    }

    @Override
    public List<RoomType> findAll() {
        List<RoomType> roomTypeList = (List<RoomType>) this.getHibernateTemplate().
                findByCriteria(DetachedCriteria.forClass(RoomType.class));
        return roomTypeList;
    }

    @Override
    public void deleteById(String id) {

        RoomType roomType = (RoomType) this.getHibernateTemplate().get("roomType", id);
//        //如果分类下有房间就把房间删除
//        if(null!=roomType.getRooms()){
//            roomType.setRooms(null);
//        }

        this.getHibernateTemplate().delete(roomType);
    }

    @Override
    public void update(RoomType roomType) {
        Session session = getSessionFactory().openSession();
        RoomType old = session.get(RoomType.class, roomType.getRoomTypeId());
        old.setRoomTypeName(roomType.getRoomTypeName());

    }
}
