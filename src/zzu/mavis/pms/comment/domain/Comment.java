package zzu.mavis.pms.comment.domain;

public class Comment {
    private String commemtId;
    private String content;

    public String getCommemtId() {
        return commemtId;
    }

    public void setCommemtId(String commemtId) {
        this.commemtId = commemtId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "commemtId='" + commemtId + '\'' +
                ", content='" + content + '\'' +
                '}';
    }
}

