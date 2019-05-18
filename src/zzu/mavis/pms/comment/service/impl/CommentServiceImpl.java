package zzu.mavis.pms.comment.service.impl;

import zzu.mavis.pms.comment.dao.CommentDao;
import zzu.mavis.pms.comment.domain.Comment;
import zzu.mavis.pms.comment.service.CommentService;

public class CommentServiceImpl implements CommentService {
   private CommentDao commentDao;

    public void setCommentDao(CommentDao commentDao) {
        this.commentDao = commentDao;
    }

    @Override
    public void add(Comment comment) {
        commentDao.add(comment);
    }
}
