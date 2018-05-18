package cn.edu.zhku.shms.dao;

import cn.edu.zhku.shms.bean.user_psw;

public interface user_pswMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(user_psw record);

    int insertSelective(user_psw record);

    user_psw selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(user_psw record);

    int updateByPrimaryKey(user_psw record);
}