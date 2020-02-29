package pl.gwozdzDariusz.ContractsManagementSystem.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.gwozdzDariusz.ContractsManagementSystem.models.Contract;
import java.util.List;

@Repository
public interface ContractDao extends JpaRepository<Contract, Integer> {


	List<Contract> findAllByContractIsActive(String isActive);


}
