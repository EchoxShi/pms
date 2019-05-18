package zzu.mavis.pms.comment.dao.impl;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import zzu.mavis.pms.comment.dao.CommentDao;
import zzu.mavis.pms.comment.domain.Comment;

public class CommentDaoImpl  extends HibernateDaoSupport implements CommentDao {
    @Override
    public void add(Comment comment) {
        this.getHibernateTemplate().saveOrUpdate(comment);
    }
}
