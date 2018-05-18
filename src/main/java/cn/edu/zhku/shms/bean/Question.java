package cn.edu.zhku.shms.bean;

public class Question {
    private Integer id;

    private Float score;

    private Byte type;

    private String optionA;

    private String optionB;

    private String optionC;

    private String optionD;

    private String optionE;

    private String optionF;

    private Integer examId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Float getScore() {
        return score;
    }

    public void setScore(Float score) {
        this.score = score;
    }

    public Byte getType() {
        return type;
    }

    public void setType(Byte type) {
        this.type = type;
    }

    public String getOptionA() {
        return optionA;
    }

    public void setOptionA(String optionA) {
        this.optionA = optionA == null ? null : optionA.trim();
    }

    public String getOptionB() {
        return optionB;
    }

    public void setOptionB(String optionB) {
        this.optionB = optionB == null ? null : optionB.trim();
    }

    public String getOptionC() {
        return optionC;
    }

    public void setOptionC(String optionC) {
        this.optionC = optionC == null ? null : optionC.trim();
    }

    public String getOptionD() {
        return optionD;
    }

    public void setOptionD(String optionD) {
        this.optionD = optionD == null ? null : optionD.trim();
    }

    public String getOptionE() {
        return optionE;
    }

    public void setOptionE(String optionE) {
        this.optionE = optionE == null ? null : optionE.trim();
    }

    public String getOptionF() {
        return optionF;
    }

    public void setOptionF(String optionF) {
        this.optionF = optionF == null ? null : optionF.trim();
    }

    public Integer getExamId() {
        return examId;
    }

    public void setExamId(Integer examId) {
        this.examId = examId;
    }
}