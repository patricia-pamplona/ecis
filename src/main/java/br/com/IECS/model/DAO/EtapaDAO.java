package br.com.IECS.model.DAO;

import java.util.List;

import javax.persistence.EntityManager;

import br.com.IECS.model.Entity.Etapa;
import br.com.IECS.util.GenericDAO;

public class EtapaDAO extends GenericDAO {

	public void salvar(Etapa etapa) throws Exception {
		EntityManager entityManager = getEntityManager();
		try {
			entityManager.getTransaction().begin();
			
			if(etapa.getId() == 0) {
				System.out.println("incluindo a empresa");
				entityManager.persist(etapa);
			} else {
				System.out.println("atualizando a empresa");
				etapa = entityManager.merge(etapa);
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
		    Etapa etapa = entityManager.find(Etapa.class, id);
		    entityManager.remove(etapa);
		    entityManager.getTransaction().commit();
	    }catch (Exception e) {
	    	e.printStackTrace();
            entityManager.getTransaction().rollback();
		}
	}

	@SuppressWarnings("unchecked")
	public List<Etapa> listar() {
		EntityManager entityManager = getEntityManager();
		List<Etapa>  etapas = null;
		try {
			entityManager.getTransaction().begin();
		    etapas = entityManager.createQuery("SELECT e FROM br.com.IECS.model.Entity.Etapa e "
		    		+ "order by e.ordem")
		    		  .getResultList();  
		    entityManager.getTransaction().commit();
	    }catch (Exception e) {
				e.printStackTrace();
		}
		
	    return etapas;
	}
	
	public Etapa getById(int id) {
		EntityManager entityManager = getEntityManager();
		Etapa  etapa = null;
		try {
		    etapa = entityManager.find(Etapa.class, id);
	    }catch (Exception e) {
				e.printStackTrace();
		}
		
	    return etapa;
	}
	
}