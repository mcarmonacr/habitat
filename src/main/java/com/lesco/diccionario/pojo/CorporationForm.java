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

public class CorporationForm{

	private String corporationName;
	private String industry;
	private String scope;
	private String actionAxis;
	private String address;
	private String habitatParticipation;
	private String comments;
	
	@com.fasterxml.jackson.databind.annotation.JsonDeserialize(using=CustomerDateAndTimeDeserialize.class)
	private Date availableDate;


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
}
