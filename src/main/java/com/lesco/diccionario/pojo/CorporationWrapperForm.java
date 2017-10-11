/**
 * 
 */
package com.lesco.diccionario.pojo;

import java.util.Date;

import com.lesco.diccionario.utils.CustomerDateAndTimeDeserialize;

/**
 * RegisterForm POJO
 * 
 * @author Mario Alonso Carmona Dinarte
 * @email monacar89@hotmail.com
 * @since 2016
 *
 */

public class CorporationWrapperForm{

	private CorporationForm corporationForm;
	private ContactForm contactForm;
	private ResourcesForm resourcesForm;
	/**
	 * @return the corporationForm
	 */
	public CorporationForm getCorporationForm() {
		return corporationForm;
	}
	/**
	 * @param corporationForm the corporationForm to set
	 */
	public void setCorporationForm(CorporationForm corporationForm) {
		this.corporationForm = corporationForm;
	}
	/**
	 * @return the contactForm
	 */
	public ContactForm getContactForm() {
		return contactForm;
	}
	/**
	 * @param contactForm the contactForm to set
	 */
	public void setContactForm(ContactForm contactForm) {
		this.contactForm = contactForm;
	}
	/**
	 * @return the resourcesForm
	 */
	public ResourcesForm getResourcesForm() {
		return resourcesForm;
	}
	/**
	 * @param resourcesForm the resourcesForm to set
	 */
	public void setResourcesForm(ResourcesForm resourcesForm) {
		this.resourcesForm = resourcesForm;
	}
}
