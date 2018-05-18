package cn.edu.zhku.shms.dao;

import cn.edu.zhku.shms.bean.Department;

public interface DepartmentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Department record);

    int insertSelective(Department record);

    Department selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Department record);

    int updateByPrimaryKeyWithBLOBs(Department record);

    int updateByPrimaryKey(Department record);
}