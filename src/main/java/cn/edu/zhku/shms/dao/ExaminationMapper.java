package cn.edu.zhku.shms.dao;

import cn.edu.zhku.shms.bean.Examination;

public interface ExaminationMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Examination record);

    int insertSelective(Examination record);

    Examination selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Examination record);

    int updateByPrimaryKeyWithBLOBs(Examination record);

    int updateByPrimaryKey(Examination record);
}