package zzu.mavis.pms.comment.service;

import zzu.mavis.pms.comment.domain.Comment;

import java.util.List;

public interface CommentService  {
    public void add(Comment comment);
    public List<Comment> findAllComment();
}
