package zzu.mavis.pms.comment.dao.impl;

import org.hibernate.Criteria;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Restrictions;
import org.hibernate.query.NativeQuery;
import org.junit.Test;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import zzu.mavis.pms.comment.dao.CommentDao;
import zzu.mavis.pms.comment.domain.Comment;

import java.util.List;

public class CommentDaoImpl  extends HibernateDaoSupport implements CommentDao {
    @Override
    public void add(Comment comment) {
        this.getHibernateTemplate().saveOrUpdate(comment);
    }

    @Override
    public List<Comment> findAllComment() {
//        select * from t_comment  order by commemtId desc limit 0,6"
       DetachedCriteria detachedCriteria= DetachedCriteria.forClass(Comment.class).addOrder(Order.desc("commemtId"));
        Criteria criteria = detachedCriteria.getExecutableCriteria(getSessionFactory().getCurrentSession());
        criteria.setFirstResult(0);
        criteria.setMaxResults(6);
        List<Comment> list = criteria.list();
        return list;
    }
}
