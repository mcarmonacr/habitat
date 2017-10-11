package com.lesco.diccionario.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lesco.diccionario.dao.ContactDAO;
import com.lesco.diccionario.dao.CorporationDAO;
import com.lesco.diccionario.dao.ProjectDAO;
import com.lesco.diccionario.dao.UserDAO;
import com.lesco.diccionario.helper.RandomGenerator;
import com.lesco.diccionario.model.Contact;
import com.lesco.diccionario.model.Corporation;
import com.lesco.diccionario.model.ProfileDetail;
import com.lesco.diccionario.model.Project;
import com.lesco.diccionario.model.Resources;
import com.lesco.diccionario.model.UserProfile;
import com.lesco.diccionario.model.Word;
import com.lesco.diccionario.pojo.AddTermForm;
import com.lesco.diccionario.pojo.AjaxResponseBody;
import com.lesco.diccionario.pojo.ContactForm;
import com.lesco.diccionario.pojo.CorporationForm;
import com.lesco.diccionario.pojo.CorporationWrapperForm;
import com.lesco.diccionario.pojo.ProjectForm;
import com.lesco.diccionario.pojo.RegisterForm;
import com.lesco.diccionario.pojo.ResourcesForm;
import com.lesco.diccionario.utils.SHAEncryption;
import com.lesco.diccionario.utils.SendMailTLS;

/**
 * Handles all the registry related operations
 * 
 * @author Mario Alonso Carmona Dinarte
 * @email monacar89@hotmail.com
 * @since 2016
 *
 */
@Controller
@RequestMapping("/corporaciones")
public class CorporationController {
	
	//Log4J class logger instance
	private static final Logger logger = Logger.getLogger(CorporationController.class);

	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private SHAEncryption shaEncryption;
	
	@Autowired
	private RandomGenerator randomGenerator;
	
	@Autowired
	private SendMailTLS sendMailTLS;
	
	@Autowired
	private CorporationDAO corporationDAO;
	
	@Autowired
	private ContactDAO contactDAO;
	
	/**
	 * Service that registers the user into the site
	 * Type: Json POST method
	 * 
	 * @param registerForm. Contains fields: userName, emailAddress, password, passwordConfirmation, private String birthdate ,termsAndConditions.
	 */
	@RequestMapping(value= "/agregarCorporacion", method = RequestMethod.POST, headers = "Accept=application/json", consumes=MediaType.APPLICATION_JSON_VALUE, produces=MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody AjaxResponseBody agregarCorporacion(@RequestBody CorporationWrapperForm corporationWrapperForm){
		
		logger.debug("RegisterController - agregarUsuario() - Start");
		
		AjaxResponseBody response = new AjaxResponseBody();

		//Saves the user to the database
		String resultadoSalvar= salvarCorporacion(corporationWrapperForm.getCorporationForm(), corporationWrapperForm.getContactForm(), corporationWrapperForm.getResourcesForm());
		
		//Response toggle based on the save return
		if("Success".equals(resultadoSalvar)){
			response.setCode("000");
			response.setMessage("Success");
		}else{
			response.setCode("999");
			response.setMessage("Failure");
		}
		
		logger.debug("RegisterController - agregarUsuario() - End");
		
		return response;
	}
	
	/**
	 * Gets all terms form the DB that match the search input pattern
	 * 
	 * Type: Json POST method
	 * 
	 * @param registerForm. Contains fields: userName, emailAddress, password, passwordConfirmation, private String birthdate ,termsAndConditions.
	 */
	@RequestMapping(value= "/obtenerListaCorporaciones", method = RequestMethod.POST, headers = "Accept=application/json", consumes=MediaType.APPLICATION_JSON_VALUE, produces=MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody AjaxResponseBody obtenerListaCorporaciones(@RequestBody Map<String, String> json){
		
		AjaxResponseBody result = new AjaxResponseBody();
		
		List<Corporation> corporationList = new ArrayList<Corporation>();
		
		logger.debug("RegisterController - obtenerListaTerminos() - Start");
		
		//Validate input
		if (json.get("termsInput") != null && !json.get("termsInput").isEmpty()){

			//Search the word regardless the category
			corporationList = corporationDAO.findByPattern(json.get("termsInput"));
						
		} else{
			//If there weren't matches, get them all
			if(corporationList.size() == 0) {
				corporationList = corporationDAO.list();
			}
		}
		
		Map <String, Object> corporationsMap = new HashMap <String, Object> ();
		
		// TODO process wordsMap in order to get only the list of words and its IDs 
		
		corporationsMap.put("corporationsList", processCorporationList(corporationList));
		result.setContent(corporationsMap);
		
		//Checks if the input user name already exists in the database
		if(corporationList != null && !corporationList.isEmpty()){			
			result.setMessage("Sucess");
			result.setCode("000");
		}else{
			result.setMessage("List is empty");
			result.setCode("001");
		}
		
		logger.debug("RegisterController - obtenerListaTerminos() - End");
		
		return result;
	}
	
	/**
	 * Verifies is the userName entered already exists in the database
	 * 
	 * Type: Json POST method
	 * 
	 * @param registerForm. Contains fields: userName, emailAddress, password, passwordConfirmation, private String birthdate ,termsAndConditions.
	 */
	@RequestMapping(value= "/verificarUsuario", method = RequestMethod.POST, headers = "Accept=application/json", consumes=MediaType.APPLICATION_JSON_VALUE, produces=MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody AjaxResponseBody verificarUsuario(@RequestBody RegisterForm registerForm){
		
		AjaxResponseBody result = new AjaxResponseBody();
		
		logger.debug("RegisterController - verificarUsuario() - Start");
		
		//Validate input
		if(registerForm.getUserName() != null && registerForm.getUserName().length() != 0){
			
			//Checks if the input user name already exists in the database
			if(userDAO.checkUserName(registerForm.getUserName().trim()) == false){			
				result.setMessage("Sucess");
				result.setCode("000");
			}else{
				result.setMessage("The user already exists");
				result.setCode("001");
			}
		}else{
			result.setMessage("Failure");
			result.setCode("001");
		}
		
		logger.debug("RegisterController - verificarUsuario() - End");
		
		return result;
	}
	
	/**
	 * 
	 * Verifies is the emailAddress entered already exists in the database
	 * 
	 * Type: Json POST method
	 * 
	 * @param registerForm. Contains fields: userName, emailAddress, password, passwordConfirmation, private String birthdate ,termsAndConditions.
	 */
	@RequestMapping(value= "/verificarCorreo", method = RequestMethod.POST, headers = "Accept=application/json", consumes=MediaType.APPLICATION_JSON_VALUE, produces=MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody AjaxResponseBody verificarCorreo(@RequestBody RegisterForm registerForm){
		
		AjaxResponseBody result = new AjaxResponseBody();
		
		logger.debug("RegisterController - verificarCorreo() - Start");
		
		//Validate input
		if(registerForm.getEmailAddress() != null && registerForm.getEmailAddress().length() != 0){
			
			//Checks if the input user name already exists in the database
			if(userDAO.checkEmailAddress(registerForm.getEmailAddress().trim()) == false){			
				result.setMessage("Sucess");
				result.setCode("000");
			}else{
				result.setMessage("The user already exists");
				result.setCode("001");
			}
		}else{
			result.setMessage("Failure");
			result.setCode("001");
		}
		
		logger.debug("RegisterController - verificarCorreo() - End");
		
		return result;
	}
	
	/**
	 * Creates a new password and then send an email to the user with that new information
	 * 
	 * Type: Json POST method
	 * 
	 * @param registerForm. Contains fields: emailAddress
	 */
	@RequestMapping(value= "/recuperarPassword", method = RequestMethod.POST, headers = "Accept=application/json", consumes=MediaType.APPLICATION_JSON_VALUE, produces=MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody AjaxResponseBody recuperarPassword(@RequestBody Map<String, String> json){
		
		AjaxResponseBody ajaxResponse = new AjaxResponseBody();
		
		logger.debug("RegisterController - recuperarPassword() - Start");
		
		if (json.get("emailAddress") != null){	
			
			String emailAddress= json.get("emailAddress");
		
			//TODO define a global constants class
			//Generate a random string of the given length
			String newPassword= randomGenerator.randomString(10);
			
			//Verifies that the email address exists in the database
			 if(userDAO.checkEmailAddress(emailAddress.trim()) == true){
				 
					//Obtain the User that belongs to the email
					ProfileDetail profileDetailQuery = userDAO.findByEmailAddress(emailAddress);
					
					//Get the user's profile
					UserProfile userProfile = userDAO.findUserProfileById(profileDetailQuery.getProfileDetailId());
					
					//Set the new password
					userProfile.setUserPassword(shaEncryption.getHashedPassword(newPassword, userProfile.getSalt()));
					
					//Update the profile in the database
					userDAO.update(userProfile);
					
					//New contact form
					ContactForm contactForm = new ContactForm();
					//contactForm.setContactEmail(emailAddress.trim());
					//contactForm.setContactMessage(contactMessage);
					contactForm.setContactName(userProfile.getUserName());
					//contactForm.setContactSubject("Diccionario LESCO - Cambio de Contraseña");
					
					//Send the email with the given parameters
					String sendEmailResponse = sendMailTLS.sendPasswordRecoveryMail(contactForm, newPassword);
					
					//Response toggle based on the save return
					if("success".equals(sendEmailResponse)){
						ajaxResponse.setCode("000");
						ajaxResponse.setMessage("Success");
					}else{
						ajaxResponse.setCode("999");
						ajaxResponse.setMessage("Error");
					}
			 }
		}		
		logger.debug("RegisterController - recuperarPassword() - End");
		
		return ajaxResponse;
	} 
	
	/**** Private Methods ****/
	
	
	/**
	 * Get the raw data and place the necessary data in the resulting map
	 * 
	 * @param corporationList
	 * @return
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	private List processCorporationList(List<Corporation> corporationList){
		
		logger.debug("RegisterController - processWordList() - Start");
		
		List result = new ArrayList();
		
		//Processes the word's list and add the necessary data in the resulting map
		for(Corporation actualCorporation:corporationList){
			Map actualCorporationMap = new HashMap();
			
			actualCorporationMap.put("corporationId", actualCorporation.getCorporationId());
			actualCorporationMap.put("corporationName", actualCorporation.getCorporationName());
			
			result.add(actualCorporationMap);
		}
		
		logger.debug("RegisterController - processWordList() - End");
		
		return result;
	}
	
	/**
	 * Stores the new user into the database
	 * 
	 * @param registerForm. Contains fields: userName, emailAddress, password, passwordConfirmation, private String birthdate ,termsAndConditions.
	 */
	private String salvarUsuario(RegisterForm registerForm){
		
		logger.debug("RegisterController - salvarUsuario() - Start");
		
		//String to the return, with the operation result
		String isUserSaved;
		
		//Validates that all values that come from the form
		if(registerForm.getUserName() != null && registerForm.getEmailAddress() != null && registerForm.getPassword() != null && 
				registerForm.getPasswordConfirmation() != null	&& registerForm.getBirthDate() != null && registerForm.getTermsAndConditions() != null){
					
			//Checks if the userName already exists
			//TODO Add the validation of the email
			if(userDAO.checkUserName(registerForm.getUserName()).equals(false)){
			
				//Get unique random salt which will be used to encryp the user password
				byte[] salt= SHAEncryption.getSalt();
				
				//New Profile Detail
				ProfileDetail profileDetail = new ProfileDetail();
				profileDetail.setBirthDate(registerForm.getBirthDate());
				profileDetail.setTermsAndConditions(registerForm.getTermsAndConditions());
				profileDetail.setEmail(registerForm.getEmailAddress());
				
				//New User Profile
				UserProfile userProfile = new UserProfile();
				userProfile.setSalt(salt);
				userProfile.setUserName(registerForm.getUserName());
				userProfile.setUserPassword(shaEncryption.getHashedPassword(registerForm.getPassword(), salt));
				
				//Checks if the user should be administrator
				if(registerForm.getAdministrator()){
					userProfile.setUserRole("administrator");
				}
				
				//Because this two instances have a one-to-one relationship, this needs to be done
				userProfile.setProfileDetail(profileDetail);
				profileDetail.setUserProfile(userProfile);
				
				//This saves both, the User Profile and the Profile Detail instances into the DB
				userDAO.save(userProfile);
				
				//If I wanted to get the ID, I'd have to do something like:
				//category.getId();
			}
			isUserSaved= "Success";
		}else{
			isUserSaved= "Failure";
		}
		
		logger.debug("RegisterController - salvarUsuario() - Start");
		
		return isUserSaved;
	}
	
	
	/**
	 * Stores the new user into the database
	 * 
	 * @param registerForm. Contains fields: userName, emailAddress, password, passwordConfirmation, private String birthdate ,termsAndConditions.
	 */
	private String salvarCorporacion(CorporationForm corporationForm, ContactForm contactForm, ResourcesForm resourcesForm){
		
		logger.debug("RegisterController - salvarUsuario() - Start");
		
		//String to the return, with the operation result
		String isUserSaved;
		
		//Validates that all values that come from the form
		if(corporationForm.getScope() != null && corporationForm.getCorporationName() != null && corporationForm.getIndustry() != null){
					
			//Checks if the userName already exists
			//TODO Add the validation of the email
			//if(userDAO.checkUserName(projectForm.getUserName()).equals(false)){
			
				//Get unique random salt which will be used to encryp the user password
								
				Corporation corporation = new Corporation();
				corporation.setCorporationName(corporationForm.getCorporationName());
				corporation.setIndustry(corporationForm.getIndustry());
				corporation.setScope(corporationForm.getScope());
				corporation.setActionAxis(corporationForm.getActionAxis());
				corporation.setAddress(corporationForm.getAddress());
				corporation.setComments(corporationForm.getComments());
				corporation.setAvailableDate(corporationForm.getAvailableDate());
				corporation.setHabitatParticipation(corporationForm.getHabitatParticipation());
				
				if(resourcesForm != null){
					Resources resources = new Resources();
					resources.setInformationCapture(getResourcesString(resourcesForm.getInformationCapture()));
					resources.setHumanResource(getResourcesString(resourcesForm.getHumanResource()));
					resources.setRelationshipNetwork(getResourcesString(resourcesForm.getRelationshipNetwork()));
					resources.setHabilities(getResourcesString(resourcesForm.getHabilities()));
					resources.setInformationDifusion(getResourcesString(resourcesForm.getInformationDifusion()));
					resources.setHousing(getResourcesString(resourcesForm.getHousing()));
					resources.setEnvironmental(getResourcesString(resourcesForm.getEnvironmental()));
					resources.setSocial(getResourcesString(resourcesForm.getSocial()));
					resources.setProducts(getResourcesString(resourcesForm.getProducts()));
					resources.setOthers(getResourcesString(resourcesForm.getOthers()));
					
					//Set the foreign keys
					resources.setCorporation(corporation);
					corporation.setResources(resources);
				}

				corporationDAO.save(corporation);
				
				//TODO
				//Set<Contact> contacts = new HashSet<Contact>();
				
				if(contactForm.getContactName() != null && !contactForm.getContactName().trim().isEmpty()){
					Contact contact = new Contact();
					contact.setContactName(contactForm.getContactName());
					contact.setOfficePhoneNumber(contactForm.getOfficePhoneNumber());
					contact.setCorporateEmail(contactForm.getCorporateEmail());
					contact.setPosition(contactForm.getPosition());
					contact.setCountry(contactForm.getCountry());
					contact.setCity(contactForm.getCity());
					contact.setState(contactForm.getState());
					contact.setZipCode(contactForm.getZipCode());
					
					contact.setCorporation(corporation);
					corporation.getContacts().add(contact);
					//contacts.add(contact);
					
					contactDAO.save(contact);
				}

				//corporation.setContacts(contacts);

			//}
			isUserSaved= "Success";
		}else{
			isUserSaved= "Failure";
		}
		
		logger.debug("RegisterController - salvarUsuario() - Start");
		
		return isUserSaved;
	}
	
	/**
	 * 
	 * @param resourcesString
	 * @return
	 */
	private String getResourcesString(String resourcesString){
		
		String result = new String();
		
		String[] individualResources = resourcesString.split("&");
		
		if(individualResources.length > 0 && !individualResources[0].isEmpty()){
			for(Integer index= 0; index < individualResources.length; index++){
				
				String[] individualResource = individualResources[index].split("=");

				
				//Gets the actual value
				if( (result.length()) == (index+1)) {
					result = result + individualResource[1];
				} else {
					result = result + individualResource[1] + ";";
				}
			}
		}
		
		return result;
	}
}