package ua.validator;

import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import ua.entity.User;
import ua.service.UserService;



public class UserValidator implements Validator{
	private final UserService userService;
	
	private final static Pattern PATTERNSIZE = Pattern
			.compile("^([0-9]{10,14})$");

	public UserValidator(UserService userService) {
		this.userService = userService;
	}

	@Override
	public boolean supports(Class<?> clazz) {
		
		return clazz.equals(User.class);
	}

	@Override
	public void validate(Object target, Errors errors) {
		User user = (User) target;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "",
				"Поле не може бути порожнє");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phoneNumber", "",
				"Поле не може бути порожнє");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "",
				"Поле не може бути порожнє");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "",
				"Поле не може бути порожнє");
		if (userService.findByUsername(user.getUsername()) != null) {
			errors.rejectValue("username", "", "Такий логін вже існує");
		}
		if (!PATTERNSIZE.matcher(user.getPhoneNumber()).matches()) {
			errors.rejectValue("phoneNumber", "",
					"Не правильний формат ");
		}
	}

	
}
