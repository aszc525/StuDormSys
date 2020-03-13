package com.itheima.dao;

import java.util.List;

import com.itheima.po.Repairer;
import com.itheima.po.Repfs;

public interface RepairerDao {
 public Repairer RepairerLogin(Repairer repairer);
 public List<Repairer> QueryRepairerSelf(Repairer repairer_id);
 public int ModifyRepairerPassword(Repairer repairer_password);
 public int RepfWorksOp(Repfs repf_id);
 public List<Repfs> RepfWorks(Repfs repfs);
}
