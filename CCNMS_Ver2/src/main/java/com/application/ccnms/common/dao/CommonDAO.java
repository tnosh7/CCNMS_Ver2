package com.application.ccnms.common.dao;

import java.util.List;
import java.util.Map;

import com.application.ccnms.digging.dto.DiggingDTO;
import com.application.ccnms.shop.dto.ShopDTO;
import com.application.ccnms.user.dto.UserDTO;

public interface CommonDAO {
	public List<DiggingDTO> selectListDiggingList(Map<String,Object> sortMap) throws Exception ;
	public int selectOneAllDiggingCnt() throws Exception ;
	public List<DiggingDTO> selectListHeadList() throws Exception ;
	public List<ShopDTO> selectListRecentShopList() throws Exception ;
	public List<ShopDTO> selectListPopulerShopList() throws Exception ;
	public List<ShopDTO> selectListgetExchangeShopList() throws Exception ;
	public void updateThumbsUp(long diggingId) throws Exception ;
	public int selectThumbsUp(long diggingId)throws Exception ;
	public List<DiggingDTO> selectListDiggingSearch(String search) throws Exception ;
	public List<ShopDTO> selectListShopSearch(String search)throws Exception ;


}
