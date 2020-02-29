package pl.gwozdzDariusz.ContractsManagementSystem.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.gwozdzDariusz.ContractsManagementSystem.models.OS;

@Repository
public interface SystemDao extends JpaRepository<OS, Integer> {

}
