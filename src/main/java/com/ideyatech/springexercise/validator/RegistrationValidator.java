package com.ideyatech.springexercise.validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.ideyatech.springexercise.entity.User;

@Component
public class RegistrationValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return User.class.isAssignableFrom(clazz) ;
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstName",
				"error.required", new Object[]{"First Name"});
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastName",
				"error.required", new Object[]{"Last Name"});
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "birthdate",
				"error.required", new Object[]{"Date of Birth"});
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email",
				"error.required", new Object[]{"Email"});
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password",
				"error.required", new Object[]{"Password"});
		
		User user = (User) target;
		
		String emailPattern = "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$";
		Pattern p = Pattern.compile(emailPattern);
		Matcher m = p.matcher(user.getEmail());
		
		if (!m.matches()) {
			errors.rejectValue("email", "error.invalid-email");
		}
		if(user.getPassword().length() < 5 || user.getPassword().length() > 20) {
			errors.rejectValue("password", "error.password-char");
		}
		if (user.getPassword().equals(user.getConfirmPassword())) {
			System.out.println("Password match!");
		} else {
			errors.rejectValue("confirmPassword", "error.password-not-match");
		}
	}

	
}
