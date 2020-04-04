package com.travelcloud.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.travelcloud.model.Viatge;
import com.travelcloud.service.IViatgeService;


@Controller
@RequestMapping(value="/viatge")
public class ViatgeController {
	@Autowired
	@Qualifier("viatgeService")
	private IViatgeService viatgeService;
	
	//PROCESAR FORMULARIO PARA AÑADIR VIAJES
		@RequestMapping(value="/addTravel", method= RequestMethod.POST)
		public String processFormAddTravel(@ModelAttribute("newTravel") Viatge viatge) throws Exception {
			viatgeService.insertarViatge(viatge);
			return "redirect:/userPage";
		}
		
		//PROCESAR FORMULARIO PARA MODIFICAR VIAJES   -- SE TENDRIA QUE MODIFICAR LA PROPIEDAD ACTION DEL FORMULARIO SI EL VIAJE YA ESTUVIERA CREADO
		@RequestMapping(value="/updateTravel", method= RequestMethod.POST)
		public String processFormUpdateTravel(@ModelAttribute("newTravel") Viatge viatge) throws Exception {
			viatgeService.modificarViatge(viatge);
			return "redirect:/travelView/{viatge.getIdVIATGE()}";
		}
		
}
