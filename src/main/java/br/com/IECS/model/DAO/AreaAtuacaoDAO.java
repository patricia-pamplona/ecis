package br.com.IECS.model.DAO;

import java.util.List;

import javax.persistence.EntityManager;

import br.com.IECS.model.Entity.AreaAtuacao;
import br.com.IECS.util.GenericDAO;

public class AreaAtuacaoDAO extends GenericDAO {

	public void salvar(AreaAtuacao areaAtuacao) throws Exception {
		EntityManager entityManager = getEntityManager();
		try {
			entityManager.getTransaction().begin();
			
			if(areaAtuacao.getId() == 0) {
				System.out.println("incluindo a empresa");
				entityManager.persist(areaAtuacao);
			} else {
				System.out.println("atualizando a empresa");
				areaAtuacao = entityManager.merge(areaAtuacao);
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
		    AreaAtuacao areaAtuacao = entityManager.find( AreaAtuacao.class, id);
		    entityManager.remove(areaAtuacao);
		    entityManager.getTransaction().commit();
	    }catch (Exception e) {
	    	e.printStackTrace();
            entityManager.getTransaction().rollback();
		}
	}

	@SuppressWarnings("unchecked")
	public List<AreaAtuacao> listar() {
		EntityManager entityManager = getEntityManager();
		List<AreaAtuacao>  areaAtuacao = null;
		try {
		    entityManager.getTransaction().begin();
		    areaAtuacao = entityManager.createQuery("SELECT e FROM br.com.IECS.model.Entity.AreaAtuacao e ")
		    		  .getResultList();  
	    }catch (Exception e) {
				e.printStackTrace();
		}
	    return areaAtuacao;
	}

	public AreaAtuacao getById(int id) {
		AreaAtuacao areaAtuacao = null;
		EntityManager entityManager = getEntityManager();
	    try {
	    	areaAtuacao = entityManager.find(AreaAtuacao.class, id);
	    }catch (Exception e) {
			e.printStackTrace();
		}
	    return areaAtuacao;
	}

}
