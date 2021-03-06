/**
 * 
 */
package com.lesco.diccionario.interceptor;

import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.lesco.diccionario.dao.UserDAO;
import com.lesco.diccionario.model.ProfileDetail;
import com.lesco.diccionario.model.UserProfile;

/**
 * Session Validator
 * @author Mario Alonso Carmona Dinarte
 * @email monacar89@hotmail.com
 * @since 2016
 */
public class SessionValidatorInterceptor extends HandlerInterceptorAdapter {

	//Log4J class logger instance
	private static final Logger logger = Logger.getLogger(SessionValidatorInterceptor.class);
	
	@Autowired
	private UserDAO userDAO;

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		
		logger.debug("SessionValidatorInterceptor - preHandle() - Start");
		
		long startTime = System.currentTimeMillis();
		logger.info("Request URL::" + request.getRequestURL().toString()
				+ ":: Start Time=" + System.currentTimeMillis());
		request.setAttribute("startTime", startTime);
		
		logger.info("SessionValidatorInterceptor:preHandle- JsessionID" + request.getSession().getId());
				
		//if returned false, we need to make sure 'response' is sent
		
		//TODO Work this logic
		HttpSession session = request.getSession(false);
		if (session == null) {
		    // Not created yet. Now do so yourself.
		    //session = request.getSession();
			
			//This works
			//response.sendRedirect("/DiccionarioLesco/login");
		} else {
		    // Already created.
		}

		logger.debug("SessionValidatorInterceptor - preHandle() - End");
		
		return true;
	}
	
	/**
	 * 
	 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		logger.debug("SessionValidatorInterceptor - postHandle() - Start");
		
		System.out.println("Request URL::" + request.getRequestURL().toString()
				+ " Sent to Handler :: Current Time=" + System.currentTimeMillis());
		
		if(modelAndView != null){
			
			Map model = modelAndView.getModel();
			
			DecimalFormat myFormatter = new DecimalFormat("####");
		    String output = myFormatter.format(Calendar.getInstance().get(Calendar.YEAR));
			
			model.put("year", output);
			
			if (request.getSession(false) != null && request.getSession(false).getAttribute("userEmail") != null){
	
					if(model != null){
						
						model.put("isSessionValid", "true");
						ProfileDetail profileDetailQuery = userDAO.findByEmailAddress(request.getSession(false).getAttribute("userEmail").toString());
						
						//Checks the user role and user name
						if(profileDetailQuery != null) {
								
							ProfileDetail ProfileDetailReference = userDAO.findById(profileDetailQuery.getProfileDetailId());
							UserProfile userProfile = ProfileDetailReference.getUserProfile();
							
							model.put("userName", userProfile.getUserName());
							model.put("userRole", userProfile.getUserRole());
						}
					}
				}
		}
		
		logger.debug("SessionValidatorInterceptor - postHandle() - End");
		
		//we can add attributes in the modelAndView and use that in the view page
	}
	
	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		logger.debug("SessionValidatorInterceptor - afterCompletion() - Start");
		
		long startTime = (Long) request.getAttribute("startTime");
		logger.info("Request URL::" + request.getRequestURL().toString()
				+ ":: End Time=" + System.currentTimeMillis());
		logger.info("Request URL::" + request.getRequestURL().toString()
				+ ":: Time Taken=" + (System.currentTimeMillis() - startTime));
		
		logger.debug("SessionValidatorInterceptor - afterCompletion() - End");

	}
	
}
