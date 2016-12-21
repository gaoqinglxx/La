package com.gxa.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gxa.dao.PraticeDao;
import com.gxa.model.Progress;
import com.gxa.service.PraticeService;
@Service
public class PraticeServiceImpl implements PraticeService {
	@Autowired
	private PraticeDao praticeDao;
	@Override
	public int addProgress(Progress pro) {
		//如果该项目的进度已存在，则进行更新，否则添加
		if(praticeDao.selectProgressByProId(2)!=null){
			return praticeDao.updateProgress(pro);
		}else{
			return praticeDao.addProgress(pro);
		}
	}

}
