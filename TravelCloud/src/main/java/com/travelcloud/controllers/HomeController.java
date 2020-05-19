package com.travelcloud.controllers;

import java.io.Console;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.objenesis.instantiator.basic.NewInstanceInstantiator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.travelcloud.model.Missatge;
import com.travelcloud.model.Usuari;
import com.travelcloud.model.Valoracio;
import com.travelcloud.model.Viatge;
import com.travelcloud.service.IFotoService;
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
	
	@Autowired
	@Qualifier("fotoService")
	private IFotoService fotoService;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public RedirectView redirect() {
		return new RedirectView("index");
	}
		
	@RequestMapping(value="index", method=RequestMethod.GET)	
	public String indexTravelCloud(HttpSession session, ModelMap model) {
		try {
			List<Viatge> viatges = viatgeService.obtenirViatges();
			if (viatges != null) {
				model.addAttribute("viatges",viatges);
				model.addAttribute("viatge", new Viatge());
			}
		} catch (Exception e) {
			System.out.println("No s'ha pogut obtenir els viatges.");
			e.printStackTrace();
		}
		return "indexTravelCloud";
	}
	
	@RequestMapping(value = "search_filter", method = RequestMethod.POST)
	@ResponseBody
    public List<Viatge> getModals(@RequestParam(value = "tipo", required = true) String tipo) {
	    System.out.println("valor pasado como pasametro: " + tipo);
	    try {
	    	List<Viatge> viatges = viatgeService.obtenirViatgesSegonComunitat(Integer.parseInt(tipo));
	    	if (viatges != null) {
	    		return viatges;
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	    
	    return null;
	 }
	
	@RequestMapping(value = "search_filter_localitat", method = RequestMethod.POST)
	@ResponseBody
    public List<Viatge> getModalsLocalitat(@RequestParam(value = "tipo", required = true) String tipo) {
	    System.out.println("valor pasado como pasametro: " + tipo);
	    try {
	    	List<Viatge> viatges = viatgeService.obtenirViatgesSegonLocalitat(Integer.parseInt(tipo));
	    	
	    	if (viatges != null) {
	    		return viatges;
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	    
	    return null;
	 }
	
	@RequestMapping(value="searchViatge", method=RequestMethod.POST)
	public String resultados(@ModelAttribute("viatges") Viatge viatge, ModelMap model) {
		try {
			List<Viatge> viatges = viatgeService.obtenirViatges();
			int puntuacio = 0;
			if (viatge.getPuntuacio() != 0) {
				puntuacio = valoracioService.obtenirPuntuacioPerViatge(viatge.getPuntuacio());
				viatge.setPuntuacio(puntuacio);
			}
			
			if (viatges != null) {
				model.addAttribute("viatges",viatges);
				model.addAttribute("viatge", new Viatge());
				List<Viatge> travels = viatgeService.obtenirViatgesPerFiltre(viatge);
				if (travels!=null && travels.size()>0) {
					model.addAttribute("travelList",travels);
				}
			}
		} catch (Exception e) {
			System.out.println("No s'ha pogut obtenir els viatges.");
			e.printStackTrace();
		}
		System.out.println(viatge.toString());
		
		return "travelSearch";
	}
	
	@RequestMapping(value = "travelSearch", method = RequestMethod.GET)
	public String travelSearch2(ModelMap model, HttpServletRequest request) {
		try {
			List<Viatge> viatges = viatgeService.obtenirViatges();
			if (viatges != null) {
				model.addAttribute("viatges",viatges);
				model.addAttribute("viatge", new Viatge());
			}
		} catch (Exception e) {
			System.out.println("No s'ha pogut obtenir els viatges.");
			e.printStackTrace();
		}
		
		return "travelSearch";
	}	
	
	@RequestMapping(value="userPage", method=RequestMethod.GET)	
	public ModelAndView userSearch(HttpServletRequest request) throws Exception {
		Usuari usuari = (Usuari) request.getSession().getAttribute("user");
		usuari.setTotalViatges(viatgeService.totalViatgesUsuari(usuari.getId()));
		ModelAndView mav = new ModelAndView("userPage");
		mav.addObject("usuari",usuari);
		
		request.getSession().setAttribute("tipusUser",usuari.getRol());

		if(usuari.getTotalViatges()!=0) {
			mav.addObject("travels",viatgeService.llistarViatgesUsuari(usuari.getId())); 
		}
		return mav;
	}
	
	@RequestMapping(value = "travelSearchHeader", method = RequestMethod.GET)
	public String travelSearch(ModelMap model, HttpServletRequest request) {
		try {
			List<Viatge> viatges = viatgeService.obtenirViatges();
			if (viatges != null) {
				model.addAttribute("viatges",viatges);
				model.addAttribute("viatge", new Viatge());
			}
		} catch (Exception e) {
			System.out.println("No s'ha pogut obtenir els viatges.");
			e.printStackTrace();
		}
		
		return "travelSearch";
	}	
	
	@RequestMapping(value = "userLogin", method = RequestMethod.GET)
	public String userLogin() {
		return "userLogin";
	}

	@RequestMapping(value = "comunidades", method = RequestMethod.GET)
	public String comunidades() {
		return "comunidades";
	}

	@RequestMapping(value = "listadoComunidadesAutonomas", method = RequestMethod.GET)
	public ModelAndView comunidades1(@RequestParam String action) throws Exception{
		switch(action) {
        case "Andalucia":
        	System.out.println();
//        	mav = new ModelAndView("travelPush");
        	break;
        case "Aragon":
            break;
        case "Asturias":
            break;
        case "Baleares":
            break;
        case "Canarias":
            break;
        case "Cantabria":
            break;
        case "Castilla-La Mancha":
            break;
        case "Castilla y Leon":
            break;
        case "Comunidad Valenciana":
            break;
        case "Extremadura":
            break;
        case "Galicia":
            break;
        case "Madrid":
            break;
        case "Murcia":
            break;
        case "Navarra":
            break;
        case "Pais Vasco":
            break;
        case "La Rioja":
            break;
        default:
            break;
		}
		return new ModelAndView("comunidades");
	}
	
	@RequestMapping(value = "userLogged", method = RequestMethod.GET)
	public ModelAndView userLogged(HttpServletRequest request,
			@ModelAttribute("newUser") Usuari usuari, ModelMap model) {
		Usuari user = null;
		ModelAndView mav = null;
		
		try {
			user = usuariService.obtenirUsuariPerMail(usuari.getEmail(), usuari.getPassword());
			request.getSession().setAttribute("id", user.getId());
			request.getSession().setAttribute("user", user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (user != null) {
			mav = new ModelAndView("indexTravelCloud");
			mav.addObject("loginIncorrect","FALSE");
			request.getSession().setAttribute("tipusUser",user.getRol());
			mav.addObject("tipusUser",user.getRol());

			try {
				List<Viatge> viatges = viatgeService.obtenirViatges();
				if (viatges != null) {
					model.addAttribute("viatges",viatges);
					model.addAttribute("viatge", new Viatge());
				}
			} catch (Exception e) {
				System.out.println("No s'ha pogut obtenir els viatges.");
				e.printStackTrace();
			}
		} else {
			mav = new ModelAndView("userLogin");
			mav.addObject("loginIncorrect","TRUE");

//			model.addAttribute("loginIncorrect", "TRUE");
//			return new RedirectView("userLogin");
		}
		return mav;
	}
	
	@RequestMapping(value = "userRegister", method = RequestMethod.GET)
	public String userRegister(Model model) {
		model.addAttribute("usuari", new Usuari());
//		List<Viatge> viatges;
//		try {
//			viatges = viatgeService.obtenirViatges();
//			if (viatges != null) {
//				model.addAttribute("viatges",viatges);
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		
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
	public String processFormUserRegister(@ModelAttribute("newUser") Usuari usuari,
			HttpServletRequest request) throws Exception {
		usuariService.insertarUsuari(usuari);
		usuari.setRol("USER");
		request.getSession().setAttribute("id", usuari.getId());
		request.getSession().setAttribute("user", usuari);
		if (request.getSession().getAttribute("id").equals(usuari.getId())) {
			request.getSession().setAttribute("sameUser",true);
		} else {
			request.getSession().setAttribute("sameUser",false);
		}
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
	
	@RequestMapping(value = "sobrenosotros", method = RequestMethod.GET)
	public String sobrenosotros() {
		return "sobrenosotros";
	}	
	
	@RequestMapping(value = "condicionesUsoPagina", method = RequestMethod.GET)
	public String condicionesUsoPagina() {
		return "condicionesUsoPagina";
	}
	
	@RequestMapping(value = "politicaPrivacidad", method = RequestMethod.GET)
	public String politicaPrivacidad() {
		return "politicaPrivacidad";
	}
	
	// YSM - lo he añadido porque no me da acceso a esta pagina, pero sigue sin funcionarme y no he querido tocar nada mas por miedo a liarla
	@RequestMapping(value = "condicionesPublicacion", method = RequestMethod.GET)
	public String condicionesPublicacion() {
		return "condicionesPublicacion";
	}

	@RequestMapping(value = "verViaje", method = RequestMethod.GET)
	public String verViaje(){
		return "travelView";
	
	}
	
}
