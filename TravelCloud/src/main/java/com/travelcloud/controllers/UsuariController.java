package com.travelcloud.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.travelcloud.model.Desitjos;
import com.travelcloud.model.Missatge;
import com.travelcloud.model.Usuari;
import com.travelcloud.model.Valoracio;
import com.travelcloud.model.Viatge;
import com.travelcloud.service.IUsuariService;
import com.travelcloud.service.IValoracioService;
import com.travelcloud.service.IViatgeService;
import com.travelcloud.service.IDesitjosService;
import com.travelcloud.service.IMissatgeService;

@Controller
@RequestMapping(value="/")
public class UsuariController {
	
	@Autowired
	@Qualifier("usuariService")
	private IUsuariService usuariService;
	
	@Autowired
	@Qualifier("viatgeService")
	private IViatgeService viatgeService;
	
	@Autowired
	@Qualifier("desitjosService")
	private IDesitjosService desitjosService;
	
	@Autowired
	@Qualifier("missatgeService")
	private IMissatgeService missatgeService;

	@Autowired
	@Qualifier("valoracioService")
	private IValoracioService valoracioService;
	
	//userPage 
	//ACTION FORMULARIO - botonesUserPage
	@RequestMapping(value="botonesUserPage", method=RequestMethod.GET)	
	public ModelAndView userSearch(@RequestParam String action) throws Exception {
		ModelAndView mav = null;
		switch(action) {
        case "Subir Viaje":
        	mav = new ModelAndView("travelPush");
        	break;
        case "Editar Perfil":
        	mav = new ModelAndView("userUpdate");
            break;
        case "Lista de deseos":
        	mav = new ModelAndView("wishList");
            break;
        case "Mensajes":
        	mav = new ModelAndView("userMessages");
            break;
        case "Gestión usuarios":
        	mav = new ModelAndView("userMessages");
            break;
        case "Gestión viajes":
        	mav = new ModelAndView("userMessages");
            break;
        case "Enviar mensaje":
        	mav = new ModelAndView("sendMessage");
            break;
        default:
            // do stuff
            break;
		}
		return mav;
	}
	
	@RequestMapping(value = "sendMessage", method = RequestMethod.GET)
	public String sendMessages() {
	    return "sendMessage";
	}
	
	@RequestMapping(params = "subirViaje", method = RequestMethod.POST)
	public String subirViaje() {
	    return "redirect:/travelPush";
	}

	@RequestMapping(params = "listaDeseos", method = RequestMethod.POST)
	public String listaDeseos() {
	    return "redirect:/wishList";
	}

	@RequestMapping(params = "gestionUsuarios", method = RequestMethod.POST)
	public String gestionUsuarios() {
	    return "redirect:/userList";
	}

	@RequestMapping(params = "gestionViajes", method = RequestMethod.POST)
	public String gestionViajes() {
	    return "redirect:/travelSearch";
	}

	@RequestMapping(params = "enviarMensaje", method = RequestMethod.POST)
	public String enviarMensaje() {
	    return "redirect:/sendMessage";
	}
	
	
	
	//travelView
	//ACTION FORMULARIO - botonesTravelView
	@RequestMapping(params = "addValoracio", method = RequestMethod.POST)
	public String addValoracio() {
	    return "redirect:/opiniones";
	}

	@RequestMapping(params = "addWishList", method = RequestMethod.POST)
	public ModelAndView addWishList(@ModelAttribute Desitjos desitjos) {
	    System.out.println(desitjos.toString());
	        ModelAndView mav = new ModelAndView(" ");
	    mav.addObject("desitjos", desitjos);
	    try {
	        desitjosService.insertarDesitjos(desitjos);
	    } catch (Exception e) {
	        // TODO Auto-generated catch block
	        e.printStackTrace();
	    }
	    return mav;
	}

	@RequestMapping(params = "returnSearch", method = RequestMethod.POST)
	public String returnSearch() {
	    return "redirect:/travelSearch";
	}

	@RequestMapping(params = "editTravel", method = RequestMethod.POST)
	public String editTravel() {
	    return "redirect:/travelPush";
	}

	@RequestMapping(params = "deleteTravel", method = RequestMethod.POST)
	public String deleteTravel() {
	    return "redirect:/userPage";
	}

	@RequestMapping(params = "returnPage", method = RequestMethod.POST)
	public String returnPage() {
	    return "redirect:/travelSearch";
	}

	//ACTION FORMULARIO - deleteValoracioAdmin
	@RequestMapping(params = "deleteValoracioAdmin", method = RequestMethod.POST)
	public String deleteValoracioAdmin() {
	    return "redirect:/travelView";
	}

	//userLogin
	//ACTION FORMULARIO - userLogin
	@RequestMapping(params = "login", method = RequestMethod.POST)
	public String login() {
	    return "redirect:/userPage";
	}


	//userRegister
	//ACTION FORMULARIO - addUser
	@RequestMapping(params = "registrarUser", method = RequestMethod.POST)
	public ModelAndView registrarUser(@ModelAttribute Usuari usuari) {
	    System.out.println(usuari.toString());
	    ModelAndView mav = new ModelAndView("userPage");
	    mav.addObject("usuari", usuari);
	    try {
	        usuariService.insertarUsuari(usuari);
	    } catch (Exception e) {
	        // TODO Auto-generated catch block
	        e.printStackTrace();
	    }
	    return mav;
	}

	//userUpdate
	//ACTION FORMULARIO - updateUser
	@RequestMapping(params = "savePage", method = RequestMethod.POST)
	public ModelAndView savePage(@ModelAttribute Usuari usuari) {
	    System.out.println(usuari.toString());
	    ModelAndView mav = new ModelAndView("userPage");
	    mav.addObject("usuari", usuari);
	    try {
	        usuariService.modificarUsuari(usuari);
	    } catch (Exception e) {
	        // TODO Auto-generated catch block
	        e.printStackTrace();
	    }
	    return mav;
	}

	@RequestMapping(params = "cancelUpdate", method = RequestMethod.POST)
	public String cancelUpdate() {
	    return "redirect:/userPage";
	}

	@RequestMapping(params = "deleteUserPage", method = RequestMethod.POST)
	public ModelAndView deleteUserPage(@ModelAttribute Usuari usuari) {
	    System.out.println(usuari.toString());
	    ModelAndView mav = new ModelAndView("userPage");
	    mav.addObject("usuari", usuari);
	    try {
	        usuariService.eliminarUsuari(usuari);
	    } catch (Exception e) {
	        // TODO Auto-generated catch block
	        e.printStackTrace();
	    }
	    return mav;
	}
	
	//userMessage
	//ACTION FORMULARIO - veureMissatge
	@RequestMapping(params = "veureMissatge", method = RequestMethod.POST)
	public String veureMissatge() {
	    return "redirect:/userMessageView";
	}

	//userMessageView
	//ACTION FORMULARIO - botonsMissatge
	@RequestMapping(params = "deleteMessage", method = RequestMethod.POST)
	public ModelAndView deleteMessage(@ModelAttribute Missatge missatge) {
	    System.out.println(missatge.toString());
	    ModelAndView mav = new ModelAndView(" ");
	    mav.addObject("missatge", missatge);
	    try {
	        missatgeService.eliminarMissatge(missatge);
	    } catch (Exception e) {
	        // TODO Auto-generated catch block
	        e.printStackTrace();
	    }
	    return mav;
	}

	//ACTION FORMULARIO - responderMensaje
	@RequestMapping(params = "enviarMissatge", method = RequestMethod.POST)
	public ModelAndView enviarMissatge1(@ModelAttribute Missatge missatge) {
	    System.out.println(missatge.toString());
	    ModelAndView mav = new ModelAndView(" ");
	    mav.addObject("missatge", missatge);
	    try {
	        missatgeService.insertarMissatge(missatge);
	    } catch (Exception e) {
	        // TODO Auto-generated catch block
	        e.printStackTrace();
	    }
	    return mav;
	}
	@RequestMapping(params = "cancelarMissatge", method = RequestMethod.POST)
	public String cancelarMissatge1() {
	    return "redirect:/userMessageView";
	}

	@RequestMapping(params = "deleteTravelWishList", method = RequestMethod.POST)
	public ModelAndView deleteTravelWishList(@ModelAttribute Desitjos desitjos) {
	    System.out.println(desitjos.toString());
	    ModelAndView mav = new ModelAndView(" ");
	    mav.addObject("desitjos", desitjos);
	    try {
	        desitjosService.insertarDesitjos(desitjos);
	    } catch (Exception e) {
	        // TODO Auto-generated catch block
	        e.printStackTrace();
	    }
	    return mav;
	}
	//opiniones
	//ACTION FORMULARIO - addValoracio
	@RequestMapping(params = "guardarValoracion", method = RequestMethod.POST)
	public ModelAndView guardarValoracion(@ModelAttribute Valoracio valoracio) {
	    System.out.println(valoracio.toString());
	    ModelAndView mav = new ModelAndView(" ");
	    mav.addObject("valoracio", valoracio);
	    try {
	        valoracioService.insertarValoracio(valoracio);
	    } catch (Exception e) {
	        // TODO Auto-generated catch block
	        e.printStackTrace();
	    }
	    return mav;
	}
	@RequestMapping(params = "cancelarValoracion", method = RequestMethod.POST)
	public String cancelarMissatge3() {
	    return "redirect:/travelView";
	}


	//travelPush
	//ACTION FORMULARIO - addTravel
	@RequestMapping(params = "afegirViatge", method = RequestMethod.POST)
	public ModelAndView afegirViatge(@ModelAttribute Viatge viatge) {
	    System.out.println(viatge.toString());
	    ModelAndView mav = new ModelAndView(" ");
	    mav.addObject("viatge", viatge);
	    try {
	        viatgeService.insertarViatge(viatge);
	    } catch (Exception e) {
	        // TODO Auto-generated catch block
	        e.printStackTrace();
	    }
	    return mav;
	}

	@RequestMapping(params = "cancelarViatge", method = RequestMethod.POST)
	public String cancelarViatge() {
	    return "redirect:/userPage";
	}

	//travelSearch
	//ACTION FORMULARIO - botonesTravelSearch (es el mismo que para form action botonesTravelView de travelView I TMB INDEX)
	@RequestMapping(params = "verViaje", method = RequestMethod.POST)
	public String verViaje1() {
	    return "redirect:/travelView";
	}
	
	@RequestMapping(params = "eliminarViaje", method = RequestMethod.POST)
	public ModelAndView eliminarViaje(@ModelAttribute Viatge viatge) {
	    System.out.println(viatge.toString());
	        ModelAndView mav = new ModelAndView(" ");
	    mav.addObject("viatge", viatge);
	    try {
	        viatgeService.insertarViatge(viatge);
	    } catch (Exception e) {
	        // TODO Auto-generated catch block
	        e.printStackTrace();
	    }
	    return mav;
	}
	
	
	
	
}

	

