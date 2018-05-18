package cn.edu.zhku.shms.dao;

import cn.edu.zhku.shms.bean.ExmationQuestionAnswer;

public interface ExmationQuestionAnswerMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ExmationQuestionAnswer record);

    int insertSelective(ExmationQuestionAnswer record);

    ExmationQuestionAnswer selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ExmationQuestionAnswer record);

    int updateByPrimaryKeyWithBLOBs(ExmationQuestionAnswer record);

    int updateByPrimaryKey(ExmationQuestionAnswer record);
}