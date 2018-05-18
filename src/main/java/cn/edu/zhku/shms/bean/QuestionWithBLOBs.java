package cn.edu.zhku.shms.bean;

public class QuestionWithBLOBs extends Question {
    private String description;

    private String correctAnswer;

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public String getCorrectAnswer() {
        return correctAnswer;
    }

    public void setCorrectAnswer(String correctAnswer) {
        this.correctAnswer = correctAnswer == null ? null : correctAnswer.trim();
    }
}