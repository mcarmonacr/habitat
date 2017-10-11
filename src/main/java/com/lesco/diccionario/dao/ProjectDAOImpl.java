package com.lesco.diccionario.dao;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.transaction.annotation.Transactional;

import com.lesco.diccionario.model.Corporation;
import com.lesco.diccionario.model.ProfileDetail;
import com.lesco.diccionario.model.Project;
import com.lesco.diccionario.model.UserProfile;
import com.lesco.diccionario.model.Word;

/**
 * User Table Data Access Object Implementation
 * 
 * @author Mario Alonso Carmona Dinarte
 * @email monacar89@hotmail.com
 * @since 2016
 *
 */
public class ProjectDAOImpl implements ProjectDAO {
	
	//Session factory injection
	private SessionFactory sessionFactory;

	public ProjectDAOImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
	
	//Log4J class logger instance
	private static final Logger logger = Logger.getLogger(ProjectDAOImpl.class);
	
	/**
	 * Save new user to the DB
	 */
	@Transactional
	public void save(Project project) {
		
		logger.debug("UserDAOImpl - save() - Start");
		
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.persist(project);
		tx.commit();
		session.close();
		
		logger.debug("UserDAOImpl - save() - End");
	}
	
	/**
	 * Get a list of all words
	 */
	@Transactional
	@SuppressWarnings("unchecked")
	public List<Project> list() {
		
		logger.debug("WordDAOImpl - List<Word>() - Start");

        List<Project> projectsList = (List<Project>) sessionFactory.getCurrentSession()
                .createCriteria(Project.class).addOrder(Order.asc("projectName"))
                .setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

        //Como ordenar los resultados
        //https://www.tutorialspoint.com/hibernate/hibernate_criteria_queries.htm
        
		logger.debug("WordDAOImpl - List<Word>() - End");
		
        return projectsList;
	}
	
	/**
	 * Find words that match the pattern
	 */
	@SuppressWarnings("unchecked")
	@Transactional
	public List<Project> findByPattern(String termsInput){
		
		logger.debug("WordDAOImpl - findByPattern() - Start");
		
		Query query = sessionFactory.getCurrentSession().createQuery("from Project where projectName like :projectName Order By projectName");
        query.setParameter("projectName", termsInput + "%");
        List<Project> projectList= query.list();
        
        logger.debug("WordDAOImpl - findByPattern() - End");
        
        return projectList;
	}
	
	/**
	 * Update a user in the DB
	 */
	@Transactional
	public void update(UserProfile userProfile) {
		
		logger.debug("UserDAOImpl - update() - Start");
		
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.update(userProfile);
		tx.commit();
		session.close();
		
		logger.debug("UserDAOImpl - update() - End");
	}
	
	/**
	 * Check if the given user name already exists in the database
	 */
	@SuppressWarnings("unchecked")
	@Transactional
	public Boolean checkUserName(String userName){
		
		logger.debug("UserDAOImpl - checkUserName() - Start");
		
		Boolean result;
		
        Query query = sessionFactory.getCurrentSession().createQuery("from UserProfile where userName like :userName");
        query.setParameter("userName", userName + "%");
        List<UserProfile> userList= query.list();

        if(!userList.isEmpty()) {      
        	result= true;
        } else {
        	result= false;
        }
        
        logger.debug("UserDAOImpl - checkUserName() - End");
        
        return result;
	}

	/**
	 * Check if the given email address already exists
	 */
	@SuppressWarnings("unchecked")
	@Transactional
	public Boolean checkEmailAddress(String emailAddress){
		
		logger.debug("UserDAOImpl - checkEmailAddress() - Start");
		
		Boolean result;
		
        Query query = sessionFactory.getCurrentSession().createQuery("from ProfileDetail where email like :emailAddress");
        query.setParameter("emailAddress", emailAddress + "%");
        List<ProfileDetail> profileDetailList= query.list();

        if(!profileDetailList.isEmpty()) {        	
        	result= true;
        } else {
        	result= false;
        }
        
        logger.debug("UserDAOImpl - checkEmailAddress() - End");
        
        return result;
	}
	
	
	/**
	 * Find a particular profile detail based on an email address
	 */
	@Transactional
	public ProfileDetail findByEmailAddress(String emailAddress){
		
		 logger.debug("UserDAOImpl - findByEmailAddress() - Start");
		 
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(ProfileDetail.class);
        criteria.add(Restrictions.eq("email",emailAddress));
        
        ProfileDetail profileDetail = (ProfileDetail) criteria.uniqueResult();
                
        logger.debug("UserDAOImpl - findByEmailAddress() - End");
        
        return 	profileDetail;
	}
	
	/**
	 * Find a particular profile detail based on its ID
	 */
	@Transactional
	public Project findById(Integer projectId){		
		
		logger.debug("UserDAOImpl - findById() - Start");
		
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Project.class);
		criteria.setCacheable(true); //Improves performance. The average time drops close to the level of calling get.
        criteria.add(Restrictions.eq("projectId",projectId));
        
        logger.debug("UserDAOImpl - findById() - End");
        
        return (Project) criteria.uniqueResult();
	}
	
	/**
	 * Find a particular user profile based on its ID
	 */
	@Transactional
	public UserProfile findUserProfileById(Integer userProfileId){		
		
		logger.debug("UserDAOImpl - findUserProfileById() - Start");
		
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(UserProfile.class);
		criteria.setCacheable(true); //Improves performance. The average time drops close to the level of calling get.
        criteria.add(Restrictions.eq("userProfileId",userProfileId));
        
        logger.debug("UserDAOImpl - findUserProfileById() - End");
        
        return (UserProfile) criteria.uniqueResult();
	}
}
