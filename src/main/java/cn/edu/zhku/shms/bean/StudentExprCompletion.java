package cn.edu.zhku.shms.bean;

import java.util.Date;

public class StudentExprCompletion extends StudentExprCompletionKey {
    private Date commitTime;

    private Byte state;

    private Byte checkState;

    private String exprSrc;

    private Float score;

    private String content;

    public Date getCommitTime() {
        return commitTime;
    }

    public void setCommitTime(Date commitTime) {
        this.commitTime = commitTime;
    }

    public Byte getState() {
        return state;
    }

    public void setState(Byte state) {
        this.state = state;
    }

    public Byte getCheckState() {
        return checkState;
    }

    public void setCheckState(Byte checkState) {
        this.checkState = checkState;
    }

    public String getExprSrc() {
        return exprSrc;
    }

    public void setExprSrc(String exprSrc) {
        this.exprSrc = exprSrc == null ? null : exprSrc.trim();
    }

    public Float getScore() {
        return score;
    }

    public void setScore(Float score) {
        this.score = score;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }
}