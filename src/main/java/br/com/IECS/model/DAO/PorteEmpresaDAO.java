package br.com.IECS.model.DAO;

import java.util.List;

import javax.persistence.EntityManager;

import br.com.IECS.model.Entity.PorteEmpresa;
import br.com.IECS.util.GenericDAO;

public class PorteEmpresaDAO extends GenericDAO {

	public void salvar(PorteEmpresa porteEmpresa) throws Exception {
		EntityManager entityManager = getEntityManager();
		try {
			entityManager.getTransaction().begin();
			
			if(porteEmpresa.getId() == 0) {
				System.out.println("incluindo a empresa");
				entityManager.persist(porteEmpresa);
			} else {
				System.out.println("atualizando a empresa");
				porteEmpresa = entityManager.merge(porteEmpresa);
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
		    PorteEmpresa porteEmpresa = entityManager.find( PorteEmpresa.class, id);
		    entityManager.remove(porteEmpresa);
		    entityManager.getTransaction().commit();
	    }catch (Exception e) {
	    	e.printStackTrace();
            entityManager.getTransaction().rollback();
		}
	}

	@SuppressWarnings("unchecked")
	public List<PorteEmpresa> listar() {
		EntityManager entityManager = getEntityManager();
		List<PorteEmpresa>  porteEmpresa = null;
		try {
		    porteEmpresa = entityManager.createQuery("SELECT e FROM br.com.IECS.model.Entity.PorteEmpresa e ")
		    		  .getResultList();  
	    }catch (Exception e) {
				e.printStackTrace();
		}
	    return porteEmpresa;
	}

	public PorteEmpresa getById(int id) {
		PorteEmpresa porteEmpresa = null;
		EntityManager entityManager = getEntityManager();
	    try {
	    	porteEmpresa = entityManager.find(PorteEmpresa.class, id);
	    }catch (Exception e) {
			e.printStackTrace();
		}
	    return porteEmpresa;
	}

}
