package cn.edu.zhku.shms.dao;

import cn.edu.zhku.shms.bean.Major;

public interface MajorMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Major record);

    int insertSelective(Major record);

    Major selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Major record);

    int updateByPrimaryKeyWithBLOBs(Major record);

    int updateByPrimaryKey(Major record);
}