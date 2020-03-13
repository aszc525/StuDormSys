package com.itheima.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.itheima.po.Repairer;
import com.itheima.po.Repfs;
@Service
public interface RepairerService {
	 public int RepairerLogin(Repairer repairer);
	 public List<Repairer> QueryRepairerSelf(Repairer repairer_id);
	 public int ModifyRepairerPassword(Repairer repairer_password);
	 public int RepfWorksOp(Repfs repf_id);
	 public List<Repfs> RepfWorks(Repfs repfs);
}
