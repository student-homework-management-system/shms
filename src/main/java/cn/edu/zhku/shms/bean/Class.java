package cn.edu.zhku.shms.bean;

public class Class {
    private Integer id;

    private Integer year;

    private String className;

    private Byte classNum;

    private Integer majorId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className == null ? null : className.trim();
    }

    public Byte getClassNum() {
        return classNum;
    }

    public void setClassNum(Byte classNum) {
        this.classNum = classNum;
    }

    public Integer getMajorId() {
        return majorId;
    }

    public void setMajorId(Integer majorId) {
        this.majorId = majorId;
    }
}