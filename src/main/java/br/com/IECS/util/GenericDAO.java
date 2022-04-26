package br.com.IECS.util;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class GenericDAO {

	protected static EntityManagerFactory emf;

	public static EntityManagerFactory getFactory (){
		if (emf == null)
	    {
	        emf = Persistence.createEntityManagerFactory("IECSDB");  
	    }
	    return emf;
	}
	 
	public EntityManager getEntityManager() {
		EntityManager entityManager = null;
	    if (entityManager == null) {
	    	entityManager = GenericDAO.getFactory().createEntityManager();
    	}
	    return entityManager;
	}
	
}
