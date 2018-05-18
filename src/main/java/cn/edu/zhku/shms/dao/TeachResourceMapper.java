package cn.edu.zhku.shms.dao;

import cn.edu.zhku.shms.bean.TeachResource;

public interface TeachResourceMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TeachResource record);

    int insertSelective(TeachResource record);

    TeachResource selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TeachResource record);

    int updateByPrimaryKey(TeachResource record);
}