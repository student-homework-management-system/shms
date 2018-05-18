package cn.edu.zhku.shms.dao;

import cn.edu.zhku.shms.bean.StudentExamCompletion;
import cn.edu.zhku.shms.bean.StudentExamCompletionKey;

public interface StudentExamCompletionMapper {
    int deleteByPrimaryKey(StudentExamCompletionKey key);

    int insert(StudentExamCompletion record);

    int insertSelective(StudentExamCompletion record);

    StudentExamCompletion selectByPrimaryKey(StudentExamCompletionKey key);

    int updateByPrimaryKeySelective(StudentExamCompletion record);

    int updateByPrimaryKey(StudentExamCompletion record);
}