package com.gy.biz;

import java.util.List;

import com.gy.beans.Joingroup;

public interface JoingroupBiz {
	public Joingroup selectgroup(Joingroup joingroup);

	public int addjoin(Joingroup join);

	public int exitjoin(Joingroup join);

	public List<Joingroup> selectAllgroup(Joingroup join);

}
