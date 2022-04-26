package br.com.IECS.model.DAO;

import java.util.List;

import javax.persistence.EntityManager;

import br.com.IECS.model.Entity.Avaliacao;
import br.com.IECS.util.GenericDAO;

public class AvaliacaoDAO extends GenericDAO {

	public void salvar(Avaliacao avaliacao) throws Exception {
		EntityManager entityManager = getEntityManager();
		try {
			entityManager.getTransaction().begin();
			
			if(avaliacao.getId() == 0) {
				System.out.println("incluindo a empresa");
				entityManager.persist(avaliacao);
			} else {
				System.out.println("atualizando a empresa");
				avaliacao = entityManager.merge(avaliacao);
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
		    Avaliacao avaliacao = entityManager.find(Avaliacao.class, id);
		    entityManager.remove(avaliacao);
		    entityManager.getTransaction().commit();
	    }catch (Exception e) {
	    	e.printStackTrace();
            entityManager.getTransaction().rollback();
		}
	}

	@SuppressWarnings("unchecked")
	public List<Avaliacao> listar() {
		EntityManager entityManager = getEntityManager();
		List<Avaliacao>  avaliacao = null;
		try {
		    avaliacao = entityManager.createQuery("SELECT e FROM br.com.IECS.model.Entity.Avaliacao e ")
		    		  .getResultList();  
	    }catch (Exception e) {
				e.printStackTrace();
		}
		
	    return avaliacao;
	}
	
	public Avaliacao getByIdEmpresa(int idEmpresa) {
		EntityManager entityManager = getEntityManager();
		Avaliacao  avaliacao = null;
		try {
			avaliacao = (Avaliacao) entityManager.createQuery("SELECT a from br.com.IECS.model.Entity.Avaliacao a "
					+ "JOIN a.empresa e "
					+ "WHERE e.id = :idEmpresa ")
				.setParameter("idEmpresa", idEmpresa).getSingleResult();
	    }catch (Exception e) {
	    	e.printStackTrace();
		}
		
	    return avaliacao;
	}
}