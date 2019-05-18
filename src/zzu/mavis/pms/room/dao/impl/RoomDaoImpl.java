package zzu.mavis.pms.room.dao.impl;

import org.hibernate.Session;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import zzu.mavis.pms.room.dao.RoomDao;
import zzu.mavis.pms.room.domain.Room;

import java.util.List;

public class RoomDaoImpl extends HibernateDaoSupport implements RoomDao {
    @Override
    public void add(Room room) {
        this.getHibernateTemplate().save(room);
    }

    @Override
    public List<Room> findAll() {
        List<Room> list = (List<Room>) this.getHibernateTemplate().findByCriteria(DetachedCriteria.forClass(Room.class));
        return list;
    }

    @Override
    //参数是房间类型的id
    public List<Room> findById(String id) {
        DetachedCriteria criteria= DetachedCriteria.forClass(Room.class).add(Restrictions.eq("roomType.roomTypeId",id));
        List<Room> rooms= (List<Room>) this.getHibernateTemplate().findByCriteria(criteria);
        return rooms;
    }

    @Override
    public void delete(Room room) {
        getSessionFactory().openSession().delete(room);
    }

    @Override
    public void update(Room room) {
        Session session = getSessionFactory().openSession();
        session.saveOrUpdate(room);
    }

    @Override
    public void updateStatus(Room room) {
        if(room.getStatus()==0){
            room.setStatus(1);
        }else {
            room.setStatus(0);
        }
        this.getHibernateTemplate().saveOrUpdate(room);
    }

    @Override
    public Room findByRoomId(String id) {
        List<Room> byRoomId = (List<Room>) this.getHibernateTemplate().findByCriteria(DetachedCriteria.forClass(Room.class).add(Restrictions.eq("roomId", id)));
        if(byRoomId.size()>0){
            return byRoomId.get(0);
        }
        return null;
    }

}
