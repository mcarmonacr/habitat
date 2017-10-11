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

public class ProjectWrapperForm{

	private ProjectForm projectForm;
	private ContactForm contactForm;
	private RequirementsForm requirementsForm;
	/**
	 * @return the projectForm
	 */
	public ProjectForm getProjectForm() {
		return projectForm;
	}
	/**
	 * @param projectForm the projectForm to set
	 */
	public void setProjectForm(ProjectForm projectForm) {
		this.projectForm = projectForm;
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
	 * @return the requirementsForm
	 */
	public RequirementsForm getRequirementsForm() {
		return requirementsForm;
	}
	/**
	 * @param requirementsForm the requirementsForm to set
	 */
	public void setRequirementsForm(RequirementsForm requirementsForm) {
		this.requirementsForm = requirementsForm;
	}
}
