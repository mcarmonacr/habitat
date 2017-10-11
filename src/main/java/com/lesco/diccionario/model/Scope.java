package com.lesco.diccionario.model;

/**
 * Video POJO
 * 
 * @author Mario Alonso Carmona Dinarte
 * @email monacar89@hotmail.com
 * @since 2016
 *
 */
public class Scope {

	private Integer scopeId;
	private String name;
	    
	//Foreign Key
	private Corporation corporation;
	private Project project;
	/**
	 * @return the scopeId
	 */
	public Integer getScopeId() {
		return scopeId;
	}
	/**
	 * @param scopeId the scopeId to set
	 */
	public void setScopeId(Integer scopeId) {
		this.scopeId = scopeId;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the corporation
	 */
	public Corporation getCorporation() {
		return corporation;
	}
	/**
	 * @param corporation the corporation to set
	 */
	public void setCorporation(Corporation corporation) {
		this.corporation = corporation;
	}
	/**
	 * @return the project
	 */
	public Project getProject() {
		return project;
	}
	/**
	 * @param project the project to set
	 */
	public void setProject(Project project) {
		this.project = project;
	}
}
