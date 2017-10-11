package com.lesco.diccionario.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * UserProfile Pojo
 * 
 * @author Mario Alonso Carmona Dinarte
 * @email monacar89@hotmail.com
 * @since 2016
 *
 */
public class Corporation {

	private Integer corporationId;
	private String corporationName;
	private String industry;
	private String scope;
	private String actionAxis;
	private String address;
	private String habitatParticipation;
	private String comments;
	private Date availableDate;
	
	
	//Foreign Key's
//	private Scope scope;
	private Set<Contact> contacts = new HashSet<Contact>(0);
	private Resources resources;
	
	/**
	 * @return the corporationId
	 */
	public Integer getCorporationId() {
		return corporationId;
	}
	/**
	 * @param corporationId the corporationId to set
	 */
	public void setCorporationId(Integer corporationId) {
		this.corporationId = corporationId;
	}
	/**
	 * @return the corporationName
	 */
	public String getCorporationName() {
		return corporationName;
	}
	/**
	 * @param corporationName the corporationName to set
	 */
	public void setCorporationName(String corporationName) {
		this.corporationName = corporationName;
	}
	/**
	 * @return the industry
	 */
	public String getIndustry() {
		return industry;
	}
	/**
	 * @param industry the industry to set
	 */
	public void setIndustry(String industry) {
		this.industry = industry;
	}
	/**
	 * @return the scope
	 */
	public String getScope() {
		return scope;
	}
	/**
	 * @param scope the scope to set
	 */
	public void setScope(String scope) {
		this.scope = scope;
	}
	/**
	 * @return the actionAxis
	 */
	public String getActionAxis() {
		return actionAxis;
	}
	/**
	 * @param actionAxis the actionAxis to set
	 */
	public void setActionAxis(String actionAxis) {
		this.actionAxis = actionAxis;
	}
	/**
	 * @return the address
	 */
	public String getAddress() {
		return address;
	}
	/**
	 * @param address the address to set
	 */
	public void setAddress(String address) {
		this.address = address;
	}
	/**
	 * @return the comments
	 */
	public String getComments() {
		return comments;
	}
	/**
	 * @param comments the comments to set
	 */
	public void setComments(String comments) {
		this.comments = comments;
	}
	/**
	 * @return the availableDate
	 */
	public Date getAvailableDate() {
		return availableDate;
	}
	/**
	 * @param availableDate the availableDate to set
	 */
	public void setAvailableDate(Date availableDate) {
		this.availableDate = availableDate;
	}
	/**
	 * @return the habitatParticipation
	 */
	public String getHabitatParticipation() {
		return habitatParticipation;
	}
	/**
	 * @param habitatParticipation the habitatParticipation to set
	 */
	public void setHabitatParticipation(String habitatParticipation) {
		this.habitatParticipation = habitatParticipation;
	}
//	/**
//	 * @return the scope
//	 */
//	public Scope getScope() {
//		return scope;
//	}
//	/**
//	 * @param scope the scope to set
//	 */
//	public void setScope(Scope scope) {
//		this.scope = scope;
//	}
	/**
	 * @return the contacts
	 */
	public Set<Contact> getContacts() {
		return contacts;
	}
	/**
	 * @param contacts the contacts to set
	 */
	public void setContacts(Set<Contact> contacts) {
		this.contacts = contacts;
	}
	/**
	 * @return the resources
	 */
	public Resources getResources() {
		return resources;
	}
	/**
	 * @param resources the resources to set
	 */
	public void setResources(Resources resources) {
		this.resources = resources;
	}
}
