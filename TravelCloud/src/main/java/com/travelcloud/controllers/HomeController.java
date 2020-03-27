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

import com.travelcloud.model.Usuari;
import com.travelcloud.service.IUsuariService;


@Controller
@RequestMapping(value="/")
public class HomeController {
	@Autowired
	@Qualifier("usuariService")
	private IUsuariService usuariService;

	@RequestMapping(value="/", method=RequestMethod.GET)
	public RedirectView redirect() {
		return new RedirectView("index");
	}
		
	@RequestMapping(value="index", method=RequestMethod.GET)	
	public String indexTravelCloud() {
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
	
//	@RequestMapping(value="index", method=RequestMethod.GET)	
//	public String index(Model model) {
//		System.out.println("prueb");
////		model.addAttribute("usuari", new Usuari(0, "abelcm7", "abel", "abelcm996@gmail.com", "666222111", "prueba de usuario", 1, "desep"));
//		return "home";
//	}
//	
//	@RequestMapping(value="ejemplo", method=RequestMethod.GET)
//	public ModelAndView metodoEjemplo() {
//		ModelAndView mav = new ModelAndView("vista2");
//		mav.addObject("objeto1","abel");
//		return mav;
//	}
//	
//	@RequestMapping(value="ejemplo3", method=RequestMethod.GET)
//	public ModelAndView metodoEjemplo3() {
//		ModelAndView mav = new ModelAndView("ejemplo3");
//		mav.addObject("users",getAllUsuaris());
//		return mav;
//	}
//	
//	@RequestMapping(value="peticionEjemplo", method=RequestMethod.GET)
//	public ModelAndView metodoPeticiones(@RequestParam(value="nombreUsuari") String nombre) {
//		ModelAndView mav = new ModelAndView("ejemplo4");
//		mav.addObject("nombreUsuari",nombre);
//		return mav;
//	}
//	
////	@RequestMapping(value="peticionEjemplo2/{nombreUsuario}", method=RequestMethod.GET)
////	public ModelAndView metodoPeticiones2(@PathVariable(value="nombreUsuari") String nombre) {
////		ModelAndView mav = new ModelAndView("ejemplo4");
////		mav.addObject("nombreUsuari",nombre);
////		return mav;
////	}
//	/*
//	 * 
//	 * FORMULARIO
//	 */
//	@RequestMapping(value="/form", method=RequestMethod.GET)
//	public String Form(Model model) {
//		model.addAttribute("usuari", new Usuari());
//		return "formulario";
//	}
//	
//	@RequestMapping(value="/addUsuari", method=RequestMethod.POST)
//	public ModelAndView resultados(@ModelAttribute("usuari") Usuari usuari) {
//		System.out.println(usuari.toString());
//		ModelAndView mav = new ModelAndView("resultados");
//		mav.addObject("usuari", usuari);
//		try {
//			usuariService.insertarUsuari(usuari);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return mav;
//	}
//	
////	@RequestMapping(value="/listadoService", method=RequestMethod.GET)
////	public String listadoUsuaris(Model model) {
////		model.addAttribute("users", usuariService.getUsuaris());
////		return null;		
////	}
//	
//	private List<Usuari> getAllUsuaris(){
//		List<Usuari> usuaris = new ArrayList<>();
//
//		return usuaris;
//	}
//
//	public void setUsuariService(IUsuariService usuariService) {
//		this.usuariService = usuariService;
//	}
//	
	
}
