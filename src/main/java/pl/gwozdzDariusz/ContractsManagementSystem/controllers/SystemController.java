package pl.gwozdzDariusz.ContractsManagementSystem.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.gwozdzDariusz.ContractsManagementSystem.models.OS;
import pl.gwozdzDariusz.ContractsManagementSystem.services.SystemService;

@Controller
public class SystemController {

	@Autowired
	SystemService systemService;

	@RequestMapping("/systems")
	public String showSystems(Model model) {
		model.addAttribute("systems", systemService.showSystems());
		return "systems";
	}

	@GetMapping("/add_system")
	public String addSystem(Model model) {
		OS system = new OS();
		model.addAttribute("system", system);
		return "add_system";
	}

	@PostMapping("/add_system")
	public String addNewSystemToDB(Model model, @ModelAttribute OS system) {
		systemService.addSystemToDB(system);
		model.addAttribute("systems", systemService.showSystems());
		return "systems";
	}

	@GetMapping("/edit_system/{id}")
	public String editSystem(Model model, @PathVariable int id) {
		OS system = systemService.findSystemById(id);
		model.addAttribute("system", system);
		return "add_system";
	}

}
