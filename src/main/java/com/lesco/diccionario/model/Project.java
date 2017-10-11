package com.lesco.diccionario.model;

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
public class Project {

	private Integer projectId;
	private String projectName;
	private String projectCode;
	private String projectScope;
	
	//Foreign Key's
//	private Scope scope;
	private Set<Contact> contacts = new HashSet<Contact>(0);
	
	private Set<Requirement> requirements = new HashSet<Requirement>(0);
	
	
	/**
	 * @return the projectId
	 */
	public Integer getProjectId() {
		return projectId;
	}
	/**
	 * @param projectId the projectId to set
	 */
	public void setProjectId(Integer projectId) {
		this.projectId = projectId;
	}
	/**
	 * @return the projectName
	 */
	public String getProjectName() {
		return projectName;
	}
	/**
	 * @param projectName the projectName to set
	 */
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	/**
	 * @return the projectCode
	 */
	public String getProjectCode() {
		return projectCode;
	}
	/**
	 * @param projectCode the projectCode to set
	 */
	public void setProjectCode(String projectCode) {
		this.projectCode = projectCode;
	}
	/**
	 * @return the projectScope
	 */
	public String getProjectScope() {
		return projectScope;
	}
	/**
	 * @param projectScope the projectScope to set
	 */
	public void setProjectScope(String projectScope) {
		this.projectScope = projectScope;
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
	 * @return the requirements
	 */
	public Set<Requirement> getRequirements() {
		return requirements;
	}
	/**
	 * @param requirements the requirements to set
	 */
	public void setRequirements(Set<Requirement> requirements) {
		this.requirements = requirements;
	}
}
