package cn.edu.zhku.shms.bean;

import java.util.Date;

public class Experiment {
    private Integer id;

    private String file;

    private String name;

    private Date startTime;

    private Date endTime;

    private Integer commitAmount;

    private Float average;

    private Integer openedCourseId;

    private String description;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFile() {
        return file;
    }

    public void setFile(String file) {
        this.file = file == null ? null : file.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public Integer getCommitAmount() {
        return commitAmount;
    }

    public void setCommitAmount(Integer commitAmount) {
        this.commitAmount = commitAmount;
    }

    public Float getAverage() {
        return average;
    }

    public void setAverage(Float average) {
        this.average = average;
    }

    public Integer getOpenedCourseId() {
        return openedCourseId;
    }

    public void setOpenedCourseId(Integer openedCourseId) {
        this.openedCourseId = openedCourseId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }
}