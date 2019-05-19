package zzu.mavis.pms.comment.dao;

import zzu.mavis.pms.comment.domain.Comment;

import java.util.List;

public interface CommentDao {
    public void add(Comment comment);
    public List<Comment> findAllComment();


}
