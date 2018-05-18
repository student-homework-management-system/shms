package cn.edu.zhku.shms.dao;

import cn.edu.zhku.shms.bean.DepartmentBranch;

public interface DepartmentBranchMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(DepartmentBranch record);

    int insertSelective(DepartmentBranch record);

    DepartmentBranch selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(DepartmentBranch record);

    int updateByPrimaryKeyWithBLOBs(DepartmentBranch record);

    int updateByPrimaryKey(DepartmentBranch record);
}