package cn.edu.zhku.shms.bean;

import java.util.Date;

public class Examination {
    private Integer id;

    private String name;

    private Float totalScore;

    private Byte singleChioceAmount;

    private Byte multipeChioceAmount;

    private Byte blankFillingAmount;

    private Byte trueOrFalseAmount;

    private Float trueOrFalseScore;

    private Float singleChoiceScore;

    private Float multipleChoiceScore;

    private Float blankFillingScore;

    private Integer examTime;

    private Date startTime;

    private Date endTime;

    private Date createTime;

    private String creator;

    private Integer openedCourseId;

    private String description;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Float getTotalScore() {
        return totalScore;
    }

    public void setTotalScore(Float totalScore) {
        this.totalScore = totalScore;
    }

    public Byte getSingleChioceAmount() {
        return singleChioceAmount;
    }

    public void setSingleChioceAmount(Byte singleChioceAmount) {
        this.singleChioceAmount = singleChioceAmount;
    }

    public Byte getMultipeChioceAmount() {
        return multipeChioceAmount;
    }

    public void setMultipeChioceAmount(Byte multipeChioceAmount) {
        this.multipeChioceAmount = multipeChioceAmount;
    }

    public Byte getBlankFillingAmount() {
        return blankFillingAmount;
    }

    public void setBlankFillingAmount(Byte blankFillingAmount) {
        this.blankFillingAmount = blankFillingAmount;
    }

    public Byte getTrueOrFalseAmount() {
        return trueOrFalseAmount;
    }

    public void setTrueOrFalseAmount(Byte trueOrFalseAmount) {
        this.trueOrFalseAmount = trueOrFalseAmount;
    }

    public Float getTrueOrFalseScore() {
        return trueOrFalseScore;
    }

    public void setTrueOrFalseScore(Float trueOrFalseScore) {
        this.trueOrFalseScore = trueOrFalseScore;
    }

    public Float getSingleChoiceScore() {
        return singleChoiceScore;
    }

    public void setSingleChoiceScore(Float singleChoiceScore) {
        this.singleChoiceScore = singleChoiceScore;
    }

    public Float getMultipleChoiceScore() {
        return multipleChoiceScore;
    }

    public void setMultipleChoiceScore(Float multipleChoiceScore) {
        this.multipleChoiceScore = multipleChoiceScore;
    }

    public Float getBlankFillingScore() {
        return blankFillingScore;
    }

    public void setBlankFillingScore(Float blankFillingScore) {
        this.blankFillingScore = blankFillingScore;
    }

    public Integer getExamTime() {
        return examTime;
    }

    public void setExamTime(Integer examTime) {
        this.examTime = examTime;
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

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getCreator() {
        return creator;
    }

    public void setCreator(String creator) {
        this.creator = creator == null ? null : creator.trim();
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