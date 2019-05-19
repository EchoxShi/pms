package zzu.mavis.pms.comment.service.impl;

import zzu.mavis.pms.comment.dao.CommentDao;
import zzu.mavis.pms.comment.domain.Comment;
import zzu.mavis.pms.comment.service.CommentService;

import java.util.List;

public class CommentServiceImpl implements CommentService {
   private CommentDao commentDao;

    public void setCommentDao(CommentDao commentDao) {
        this.commentDao = commentDao;
    }

    @Override
    public void add(Comment comment) {
        commentDao.add(comment);
    }

    @Override
    public List<Comment> findAllComment() {
        List<Comment> allComment = commentDao.findAllComment();
        return allComment;
    }

}
