package com.gxa.service;

import java.util.List;
import java.util.Map;

import com.gxa.model.Project;

public interface DeclareService {

	public List<Map<String, Object>> getProjectByIdStatus(Map<String, Object> map);

	public Project getProjectById(int pro_id);

}
