package com.ad.dao;

import com.ad.model.UserBookLink;
import com.ad.util.BaseMapper;

import java.util.List;

/**
 * Created by Ivan on 2016/8/2.
 */
public interface UserBookMapper extends BaseMapper<UserBookLink> {
    UserBookLink selectByForeignKey(UserBookLink userBookLink);
    void deleteSubscibe(UserBookLink userBookLink);
    List<UserBookLink> selectListByForeignKey(String b_id);
    void deleteList(String b_id);
    /**
     * 取得订阅数量
     * @return
     */
    public long getSubscibeCount(String b_id);
}
