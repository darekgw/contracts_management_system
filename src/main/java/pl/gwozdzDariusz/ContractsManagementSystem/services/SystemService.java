package pl.gwozdzDariusz.ContractsManagementSystem.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.gwozdzDariusz.ContractsManagementSystem.dao.SystemDao;
import pl.gwozdzDariusz.ContractsManagementSystem.models.OS;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class SystemService {

	@Autowired
	SystemDao systemDao;

public List<OS> showSystems() {
	return systemDao.findAll();
}

public Map<Integer, String> getSystemMap() {
	List<OS> OSList = showSystems();
	Map<Integer, String> systemMap = new HashMap<>();
	for(OS s : OSList) {
		systemMap.put(s.getId(), s.getSystemName());
	}
	return systemMap;
}

public void addSystemToDB(OS system) {
	systemDao.save(system);
}

public OS findSystemById(int id) {
	return systemDao.findOne(id);
}

}
