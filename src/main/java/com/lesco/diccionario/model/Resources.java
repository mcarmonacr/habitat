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
public class Resources {

	private Integer resourcesId;
	
	private String informationCapture;
	private String humanResource;
	private String relationshipNetwork;
	private String habilities;
	private String informationDifusion;
	private String housing;
	private String environmental;
	private String social;
	private String products;
	private String others;
	
	private Corporation corporation;

	/**
	 * @return the resourcesId
	 */
	public Integer getResourcesId() {
		return resourcesId;
	}

	/**
	 * @param resourcesId the resourcesId to set
	 */
	public void setResourcesId(Integer resourcesId) {
		this.resourcesId = resourcesId;
	}

	/**
	 * @return the informationCapture
	 */
	public String getInformationCapture() {
		return informationCapture;
	}

	/**
	 * @param informationCapture the informationCapture to set
	 */
	public void setInformationCapture(String informationCapture) {
		this.informationCapture = informationCapture;
	}

	/**
	 * @return the humanResource
	 */
	public String getHumanResource() {
		return humanResource;
	}

	/**
	 * @param humanResource the humanResource to set
	 */
	public void setHumanResource(String humanResource) {
		this.humanResource = humanResource;
	}

	/**
	 * @return the relationshipNetwork
	 */
	public String getRelationshipNetwork() {
		return relationshipNetwork;
	}

	/**
	 * @param relationshipNetwork the relationshipNetwork to set
	 */
	public void setRelationshipNetwork(String relationshipNetwork) {
		this.relationshipNetwork = relationshipNetwork;
	}

	/**
	 * @return the habilities
	 */
	public String getHabilities() {
		return habilities;
	}

	/**
	 * @param habilities the habilities to set
	 */
	public void setHabilities(String habilities) {
		this.habilities = habilities;
	}

	/**
	 * @return the informationDifusion
	 */
	public String getInformationDifusion() {
		return informationDifusion;
	}

	/**
	 * @param informationDifusion the informationDifusion to set
	 */
	public void setInformationDifusion(String informationDifusion) {
		this.informationDifusion = informationDifusion;
	}

	/**
	 * @return the housing
	 */
	public String getHousing() {
		return housing;
	}

	/**
	 * @param housing the housing to set
	 */
	public void setHousing(String housing) {
		this.housing = housing;
	}

	/**
	 * @return the environmental
	 */
	public String getEnvironmental() {
		return environmental;
	}

	/**
	 * @param environmental the environmental to set
	 */
	public void setEnvironmental(String environmental) {
		this.environmental = environmental;
	}

	/**
	 * @return the social
	 */
	public String getSocial() {
		return social;
	}

	/**
	 * @param social the social to set
	 */
	public void setSocial(String social) {
		this.social = social;
	}

	/**
	 * @return the products
	 */
	public String getProducts() {
		return products;
	}

	/**
	 * @param products the products to set
	 */
	public void setProducts(String products) {
		this.products = products;
	}

	/**
	 * @return the others
	 */
	public String getOthers() {
		return others;
	}

	/**
	 * @param others the others to set
	 */
	public void setOthers(String others) {
		this.others = others;
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
}
