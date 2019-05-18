package zzu.mavis.pms.comment.action;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import zzu.mavis.pms.comment.domain.Comment;
import zzu.mavis.pms.comment.service.CommentService;

public class CommentAction extends ActionSupport implements ModelDriven<Comment> {
    private CommentService commentService;

    public void setCommentService(CommentService commentService) {
        this.commentService = commentService;
    }

    private Comment comment=new Comment();
    @Override
    public Comment getModel() {
        return comment;
    }

    public String add(){
        commentService.add(comment);
        return "toindex";
    }
}
