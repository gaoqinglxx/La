package com.gxa.service;

import java.util.Map;

import com.gxa.model.Progress;

public interface PraticeService {

	int addProgress(Progress pro);

	Map<String, Object> getArea(int area_id);

}
