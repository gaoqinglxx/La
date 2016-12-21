package com.gxa.dao;

import com.gxa.model.Progress;

public interface PraticeDao {

	public int addProgress(Progress pro);

	public Progress selectProgressByProId(int pro_id);

	public int updateProgress(Progress pro);

}
