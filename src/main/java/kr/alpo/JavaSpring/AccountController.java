package kr.alpo.JavaSpring;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller

@RequestMapping(value="/signup")
public class AccountController {
	
		@RequestMapping(value = "signin", method = RequestMethod.GET)
		public String signin(){
			return "signin";
		}
		
		@RequestMapping(value = "signin", method = RequestMethod.POST)
		public String signin(String id, String password){
			String user_id = "1234";
			String user_password = "1234";
			
			if(user_id.compareTo(id) == 0 && 
					user_password.compareTo(password) == 0)
				return "redirect:/signup/success";
			return "signin";
		}
	
		
		@RequestMapping(value = "", method = RequestMethod.GET)
		public String signup(){
			return "signup";
		}
		
		
		@RequestMapping(value = "", method = RequestMethod.POST)
		public String signup(String id, String email, String password, Model model) {
			System.out.println("post : "+id + " , " + email + " , " + password);
			if(!isEmpty(id) && !isEmpty(email) && !isEmpty(password))
				return "redirect:/signup/success";
			if(!isEmpty(id)) model.addAttribute("id", id);
			if(!isEmpty(email)) model.addAttribute("email", email);
			if(!isEmpty(password)) model.addAttribute("password", password);
			return "signup";
		}
		
		@RequestMapping(value = "success", method=RequestMethod.GET)
		public String signupSuccess() {	
			System.out.println("success");
			return "successsignup";
		}
		
		public boolean isEmpty(String s) {
			if(s == null || s.length() == 0) return true;
			return false;
		}

}
