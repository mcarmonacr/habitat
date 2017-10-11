package com.lesco.diccionario.dao;

import com.lesco.diccionario.model.Contact;
import com.lesco.diccionario.model.ProfileDetail;
import com.lesco.diccionario.model.Project;
import com.lesco.diccionario.model.UserProfile;


/**
 * User Table Data Access Object Interface
 * 
 * @author Mario Alonso Carmona Dinarte
 * @email monacar89@hotmail.com
 * @since 2016
 *
 */
public interface ContactDAO {
	
	/**
	 * Saves a new user
	 * @param userProfile
	 */
	public void save(Contact contact);
	
	/**
	 * Updates a new user
	 * @param userProfile
	 */
	public void update(UserProfile userProfile);
	
	/**
	 * Check if the given user name already exists
	 * @param userName
	 * @return
	 */
	public Boolean checkUserName(String userName);
	
	/**
	 * Check if the given email address already exists
	 * @param emailAddress
	 * @return
	 */
	public Boolean checkEmailAddress(String emailAddress);
	
	/**
	 * Find a particular profile detail by email address
	 * @param categoryName
	 * @return
	 */
	public ProfileDetail findByEmailAddress(String emailAddress);
	
	/**
	 * Find a particular profile detail by its ID
	 * @param emailAddress
	 * @return
	 */
	public ProfileDetail findById(Integer profileDetailId);
	
	/**
	 * Find a particular user profile by its ID
	 * @param userProfileId
	 * @return
	 */
	public UserProfile findUserProfileById(Integer userProfileId);
}
