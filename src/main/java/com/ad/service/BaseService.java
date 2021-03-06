package com.ad.service;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

import java.util.List;

/**
 * Created by Ivan on 2016/8/2.
 */
public interface BaseService<T> {
    public int delete(T t) ;
    public int deleteByExample(Object o) ;
    public int deleteByPrimaryKey(Object o) ;
    public int insert(T t) ;
    public int insertList(List<T> list) ;
    public int insertSelective(T t) ;
    public int insertUseGeneratedKeys(T t) ;
    public List<T> select(T t) ;
    public T selectOne(T t);
    public List<T> selectAll() ;
    public List<T> selectByExample(Object o);
    public List<T> selectByExampleAndRowBounds(Object o, RowBounds r);
    public T selectByPrimaryKey(Object o);
    public List<T> selectByRowBounds(T t, RowBounds r);
    public int selectCount(T t);
    public int selectCountByExample(Object o);
    public int updateByExampleSelective(@Param("record") T t, @Param("example") Object o);
    public int updateByExample(@Param("record") T t, @Param("example") Object o);
    public int updateByPrimaryKey(T t);
    public int updateByPrimaryKeySelective(T t);

}
