package pl.gwozdzDariusz.ContractsManagementSystem.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.gwozdzDariusz.ContractsManagementSystem.dao.ContractDao;
import pl.gwozdzDariusz.ContractsManagementSystem.models.Contract;

import java.util.List;

@Service
public class ContractService {

	private final String SET_INACTIVE = "no";

	@Autowired
	ContractDao contractDao;

	@Autowired
	SystemService systemService;

	public List<Contract> showAllContracts() {

		return contractDao.findAll();
	}

	public List<Contract> showActiveContracts(String isActive) {

		return contractDao.findAllByContractIsActive(isActive);
	}

	public void deactivateContract(int id) {
		Contract contractToDeactivate = contractDao.findOne(id);
		contractToDeactivate.setContractIsActive(SET_INACTIVE);
		contractDao.save(contractToDeactivate);
	}

	public void addContractToDB(Contract newContract) {
		int sysId = newContract.getOS().getId();
		newContract.setOS(systemService.systemDao.findOne(sysId));
		contractDao.save(newContract);
	}

	public Contract findContractById(int id) {
		return contractDao.findOne(id);
	}

}
