package cn.edu.zhku.shms.dao;

import cn.edu.zhku.shms.bean.Experiment;

public interface ExperimentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Experiment record);

    int insertSelective(Experiment record);

    Experiment selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Experiment record);

    int updateByPrimaryKeyWithBLOBs(Experiment record);

    int updateByPrimaryKey(Experiment record);
}