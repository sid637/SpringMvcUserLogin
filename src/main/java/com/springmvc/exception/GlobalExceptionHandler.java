package com.springmvc.exception;

import javax.servlet.http.HttpServletRequest;

import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class GlobalExceptionHandler {
	
	@ExceptionHandler(RuntimeException.class)
    public String handleRuntimeException(HttpServletRequest request, Exception ex, Model model){
        System.out.println("RuntimeException Occured:: URL="+request.getRequestURL() +" raised "+ex);
        model.addAttribute("error","User Already registered");
        return "runtimeError";
    }

}
