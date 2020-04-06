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

import com.travelcloud.model.Missatge;
import com.travelcloud.model.Usuari;
import com.travelcloud.model.Valoracio;
import com.travelcloud.service.IMissatgeService;
import com.travelcloud.service.IUsuariService;
import com.travelcloud.service.IValoracioService;
import com.travelcloud.service.IViatgeService;


@Controller
@RequestMapping(value="/")
public class HomeController {
	@Autowired
	@Qualifier("usuariService")
	private IUsuariService usuariService;

	@Autowired
	@Qualifier("viatgeService")
	private IViatgeService viatgeService;
	
	@Autowired
	@Qualifier("valoracioService")
	private IValoracioService valoracioService;
	
	@Autowired
	@Qualifier("missatgeService")
	private IMissatgeService missatgeService;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public RedirectView redirect() {
		return new RedirectView("index");
	}
		
	@RequestMapping(value="index", method=RequestMethod.GET)	
	public String indexTravelCloud(Model model) {
		try {
			model.addAttribute("viatges",viatgeService.obtenirViatges());
			model.addAttribute("valoracions",valoracioService.obtenirPuntuacions());
		} catch (Exception e) {
			System.out.println("No s'ha pogut obtenir els viatges.");
			e.printStackTrace();
		}
		return "indexTravelCloud";
	}
	
	@RequestMapping(value="userPage", method=RequestMethod.GET)	
	public String userSearch() {
		return "userPage";
	}
	
	@RequestMapping(value = "travelSearch", method = RequestMethod.GET)
	public String travelSearch() {
		return "travelSearch";
	}	
	
	@RequestMapping(value = "userLogin", method = RequestMethod.GET)
	public String userLogin() {
		return "userLogin";
	}
	
	@RequestMapping(value = "userRegister", method = RequestMethod.GET)
	public String userRegister() {
		return "userRegister";
	}
	
	// YSM - lo he añadido porque no me da acceso a esta pagina, pero sigue sin funcionarme y no he querido tocar nada mas por miedo a liarla
	@RequestMapping(value = "userUpdate", method = RequestMethod.GET)
	public String userUpdate() {
		return "userUpdate";
	}
	
		
	//PONGO ESTO AQUI PARA REVISAR SI ESTA BIEN HECHO, LUEGO YA LO UBICAREMOS DONDE TOQUE
	
	// PROCESAR FORMULARIO REGISTRO USUARIO
	@RequestMapping(value="/addUser", method= RequestMethod.POST)
	public String processFormUserRegister(@ModelAttribute("newUser") Usuari usuari) throws Exception {
		usuariService.insertarUsuari(usuari);
		return "redirect:/userPage";
	}
	
	//PROCESAR FORMULARIO MODIFICACION USUARIOS
	@RequestMapping(value="/updateUser", method= RequestMethod.POST)
	public String processFormUserUpdate(@ModelAttribute("newUser") Usuari usuari) throws Exception {
		usuariService.modificarUsuari(usuari);   //SE TENDRIA QUE HACER ALGUNA VERIFICACION PARA NO DUPLICAR O NO ES NECESARIO?
		return "redirect:/userPage";
	}
	
	//PROCESAR FORMULARIO VALORACIONES
	@RequestMapping(value="/addValoracio", method= RequestMethod.POST)
	public String processFormAddValoracio(@ModelAttribute("newValoracio") Valoracio valoracio) throws Exception {
		valoracioService.insertarValoracio(valoracio);
		return "redirect:/  ";
	}
	
	//PROCESAR FORMULARIO ENVIAR MENSAJE
	@RequestMapping(value="/sendMessage", method= RequestMethod.POST)
	public String processFormAddValoracio(@ModelAttribute("newMessage") Missatge missatge) throws Exception {
		missatgeService.insertarMissatge(missatge);
		return "redirect:/  ";
	}
	

	
}
