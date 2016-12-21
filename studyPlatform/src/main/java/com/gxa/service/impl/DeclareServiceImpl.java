package com.gxa.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gxa.dao.DeclareDao;
import com.gxa.model.Project;
import com.gxa.service.DeclareService;

@Service
public class DeclareServiceImpl implements DeclareService {
	@Autowired
	private DeclareDao declareDao;

	@Override
	public List<Map<String, Object>> getProjectByIdStatus(Map<String, Object> map) {
		List<Map<String, Object>> list=declareDao.getProjectByIdStatus(map);
		return list;
	}

	@Override
	public Project getProjectById(int pro_id) {
		
		return declareDao.getProjectById(pro_id);
	}

}
