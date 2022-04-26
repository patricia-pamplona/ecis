package br.com.IECS.model.DAO;

import java.util.List;

import javax.persistence.EntityManager;

import br.com.IECS.model.Entity.Requisito;
import br.com.IECS.util.GenericDAO;

public class RequisitoDAO extends GenericDAO {

	public void salvar(Requisito requisito) throws Exception {
		EntityManager entityManager = getEntityManager();
		try {
			entityManager.getTransaction().begin();
			
			if(requisito.getId() == 0) {
				System.out.println("incluindo a empresa");
				entityManager.persist(requisito);
			} else {
				System.out.println("atualizando a empresa");
				requisito = entityManager.merge(requisito);
			}
			entityManager.getTransaction().commit();
		}catch (Exception e) {
			e.printStackTrace();
            entityManager.getTransaction().rollback();
		}
	}

	public void excluir(int id) {
		EntityManager entityManager = getEntityManager();
		try {
		    entityManager.getTransaction().begin();
		    Requisito requisito = entityManager.find(Requisito.class, id);
		    entityManager.remove(requisito);
		    entityManager.getTransaction().commit();
	    }catch (Exception e) {
	    	e.printStackTrace();
            entityManager.getTransaction().rollback();
		}
	}

	@SuppressWarnings("unchecked")
	public List<Requisito> listar() {
		EntityManager entityManager = getEntityManager();
		List<Requisito>  requisito = null;
		try {
		    entityManager.getTransaction().begin();
		    requisito = entityManager.createQuery("SELECT e FROM br.com.IECS.model.Entity.Requisito e"
		    		+ "	inner join e.item "
		    		+ "order by e.item.ordem, e.ordem ")
		    		  .getResultList();  
	    }catch (Exception e) {
				e.printStackTrace();
		}
		
	    return requisito;
	}
	
}