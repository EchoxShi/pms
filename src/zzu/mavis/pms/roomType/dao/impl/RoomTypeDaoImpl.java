package zzu.mavis.pms.roomType.dao.impl;

import org.hibernate.Session;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
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
        RoomType roomType = (RoomType) this.getHibernateTemplate().get(RoomType.class, id);
        this.getHibernateTemplate().delete(roomType);
    }

    @Override
    public void update(RoomType roomType) {
        Session session = getSessionFactory().openSession();
        RoomType old = session.get(RoomType.class, roomType.getRoomTypeId());
        old.setRoomTypeName(roomType.getRoomTypeName());

    }

    @Override
    public RoomType findById(String id) {
        List<RoomType> roomType = (List<RoomType>) this.getHibernateTemplate().findByCriteria(DetachedCriteria.forClass(RoomType.class).add(Restrictions.eq("roomTypeId", id)));
        if(roomType.size()>0){
            return roomType.get(0);
        }
        return null;
    }
}
