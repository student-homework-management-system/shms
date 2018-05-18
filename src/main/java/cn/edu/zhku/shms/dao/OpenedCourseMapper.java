package cn.edu.zhku.shms.dao;

import cn.edu.zhku.shms.bean.OpenedCourse;

public interface OpenedCourseMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OpenedCourse record);

    int insertSelective(OpenedCourse record);

    OpenedCourse selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OpenedCourse record);

    int updateByPrimaryKeyWithBLOBs(OpenedCourse record);

    int updateByPrimaryKey(OpenedCourse record);
}