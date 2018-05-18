package cn.edu.zhku.shms.bean;

import java.util.Date;

public class StudentExamCompletion extends StudentExamCompletionKey {
    private Date commitdate;

    private Byte checkState;

    private String exmaSrc;

    private Float score;

    public Date getCommitdate() {
        return commitdate;
    }

    public void setCommitdate(Date commitdate) {
        this.commitdate = commitdate;
    }

    public Byte getCheckState() {
        return checkState;
    }

    public void setCheckState(Byte checkState) {
        this.checkState = checkState;
    }

    public String getExmaSrc() {
        return exmaSrc;
    }

    public void setExmaSrc(String exmaSrc) {
        this.exmaSrc = exmaSrc == null ? null : exmaSrc.trim();
    }

    public Float getScore() {
        return score;
    }

    public void setScore(Float score) {
        this.score = score;
    }
}