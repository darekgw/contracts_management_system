package pl.gwozdzDariusz.ContractsManagementSystem.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.gwozdzDariusz.ContractsManagementSystem.models.Contract;
import pl.gwozdzDariusz.ContractsManagementSystem.services.ContractService;
import pl.gwozdzDariusz.ContractsManagementSystem.services.SystemService;

import java.util.Map;

@Controller
@RequestMapping("/")
public class ContractController {

	Boolean onlyActiveContracts = false;
	private final String CHOOSE_ACTIVE = "yes";

	@Autowired
	ContractService contractService;

	@Autowired
	SystemService systemService;

	@RequestMapping("/contracts")
	public String showContracts(Model model) {
		onlyActiveContracts = false;
		model.addAttribute("contracts", contractService.showAllContracts());
		model.addAttribute("onlyActiveContracts", onlyActiveContracts);
		return "contracts";
	}

	@RequestMapping({"/active", "/"})
	public String showActiveContracts(Model model) {
		onlyActiveContracts = true;
		model.addAttribute("contracts", contractService.showActiveContracts(CHOOSE_ACTIVE));
		model.addAttribute("onlyActiveContracts", onlyActiveContracts);
		return "contracts";
	}

	@RequestMapping("/deactivate/{id}")
	public String deactivateContract(Model model, @PathVariable int id) {
		onlyActiveContracts = false;
		contractService.deactivateContract(id);
		model.addAttribute("contracts", contractService.showAllContracts());
		model.addAttribute("onlyActiveContracts", onlyActiveContracts);
		return "contracts";
	}

	@GetMapping("/add_contract")
	public String addContract(Model model) {
		Contract contract = new Contract();
		Map<Integer, String> systemMap = systemService.getSystemMap();
		model.addAttribute("contract", contract);
		model.addAttribute("systemMap", systemMap);
		return "add_contract";
	}

	@PostMapping("/add_contract")
	public String addNewContractToDB(Model model, @ModelAttribute Contract contract) {
		onlyActiveContracts = true;
		if (contract.getContractIsActive() == null) contract.setContractIsActive(CHOOSE_ACTIVE);
		contractService.addContractToDB(contract);
		model.addAttribute("contracts", contractService.showActiveContracts(CHOOSE_ACTIVE));
		model.addAttribute("onlyActiveContracts", onlyActiveContracts);
		return "contracts";
	}

	@GetMapping("/edit_contract/{id}")
	public String editContract(Model model, @PathVariable int id) {
		Contract contract = contractService.findContractById(id);
		Map<Integer, String> systemMap = systemService.getSystemMap();
		model.addAttribute("contract", contract);
		model.addAttribute("systemMap", systemMap);
		return "add_contract";
	}

}
