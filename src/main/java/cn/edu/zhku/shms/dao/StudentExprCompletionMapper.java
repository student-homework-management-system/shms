package cn.edu.zhku.shms.dao;

import cn.edu.zhku.shms.bean.StudentExprCompletion;
import cn.edu.zhku.shms.bean.StudentExprCompletionKey;

public interface StudentExprCompletionMapper {
    int deleteByPrimaryKey(StudentExprCompletionKey key);

    int insert(StudentExprCompletion record);

    int insertSelective(StudentExprCompletion record);

    StudentExprCompletion selectByPrimaryKey(StudentExprCompletionKey key);

    int updateByPrimaryKeySelective(StudentExprCompletion record);

    int updateByPrimaryKeyWithBLOBs(StudentExprCompletion record);

    int updateByPrimaryKey(StudentExprCompletion record);
}