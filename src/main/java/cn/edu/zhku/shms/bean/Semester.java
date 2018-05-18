package cn.edu.zhku.shms.bean;

public class Semester {
    private Integer id;

    private Integer year;

    private Byte firstSecond;

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

    public Byte getFirstSecond() {
        return firstSecond;
    }

    public void setFirstSecond(Byte firstSecond) {
        this.firstSecond = firstSecond;
    }
}