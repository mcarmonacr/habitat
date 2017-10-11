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
public class Requirement {

	private Integer requirementId;
	private Integer requirementQuantity;
	private String requirementType;
	private Integer unitaryCost;
	private Integer totalCost;
	
	private Project project;

	/**
	 * @return the requirementId
	 */
	public Integer getRequirementId() {
		return requirementId;
	}

	/**
	 * @param requirementId the requirementId to set
	 */
	public void setRequirementId(Integer requirementId) {
		this.requirementId = requirementId;
	}

	/**
	 * @return the requirementQuantity
	 */
	public Integer getRequirementQuantity() {
		return requirementQuantity;
	}

	/**
	 * @param requirementQuantity the requirementQuantity to set
	 */
	public void setRequirementQuantity(Integer requirementQuantity) {
		this.requirementQuantity = requirementQuantity;
	}

	/**
	 * @return the requirementType
	 */
	public String getRequirementType() {
		return requirementType;
	}

	/**
	 * @param requirementType the requirementType to set
	 */
	public void setRequirementType(String requirementType) {
		this.requirementType = requirementType;
	}

	/**
	 * @return the unitaryCost
	 */
	public Integer getUnitaryCost() {
		return unitaryCost;
	}

	/**
	 * @param unitaryCost the unitaryCost to set
	 */
	public void setUnitaryCost(Integer unitaryCost) {
		this.unitaryCost = unitaryCost;
	}

	/**
	 * @return the totalCost
	 */
	public Integer getTotalCost() {
		return totalCost;
	}

	/**
	 * @param totalCost the totalCost to set
	 */
	public void setTotalCost(Integer totalCost) {
		this.totalCost = totalCost;
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
