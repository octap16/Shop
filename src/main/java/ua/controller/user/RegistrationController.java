package ua.controller.user;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;



import ua.dto.filter.ItemFilter;
import ua.entity.User;
import ua.service.UserService;
import ua.validator.UserValidator;

@Controller
@RequestMapping("/registration")
@SessionAttributes(names = "registration")
public class RegistrationController {
	@Autowired
	private UserService userService;
	
	@ModelAttribute("filter")
	public ItemFilter getFilter() {
		return new ItemFilter();
	}
	
	@InitBinder("user")
	protected void initBinder(WebDataBinder binder) {
		binder.setValidator(new UserValidator(userService));
	}

	@RequestMapping
	public String registration(Model model) {
		model.addAttribute("user", new User());
		return "user-registration";
	}
	
	

	@RequestMapping( method = POST)
	public String registration(@ModelAttribute("user") @Valid User user,  BindingResult br, SessionStatus status, Model model) {
		if(br.hasErrors()){
			return "user-registration";
		}
		userService.save(user);
		status.setComplete();
		return "redirect:/login";
	}
	
	
}
