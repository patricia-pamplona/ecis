package br.com.IECS.model.DAO;

import java.util.List;

import javax.persistence.EntityManager;

import br.com.IECS.model.Entity.Empresa;
import br.com.IECS.model.Entity.Resposta;
import br.com.IECS.util.GenericDAO;

public class RespostaDAO extends GenericDAO {

	public void salvar(Resposta resposta) throws Exception {
		EntityManager entityManager = getEntityManager();
		try {
			entityManager.getTransaction().begin();
			
			if(resposta.getId() == 0) {
				System.out.println("incluindo a empresa");
				entityManager.persist(resposta);
			} else {
				System.out.println("atualizando a empresa");
				resposta = entityManager.merge(resposta);
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
		    Resposta resposta = entityManager.find(Resposta.class, id);
		    entityManager.remove(resposta);
		    entityManager.getTransaction().commit();
	    }catch (Exception e) {
	    	e.printStackTrace();
            entityManager.getTransaction().rollback();
		}
	}

	@SuppressWarnings("unchecked")
	public List<Resposta> listar() {
		EntityManager entityManager = getEntityManager();
		List<Resposta>  resposta = null;
		try {
		    resposta = entityManager.createQuery("SELECT e FROM br.com.IECS.model.Entity.Resposta e ")
		    		  .getResultList();  
	    }catch (Exception e) {
				e.printStackTrace();
		}
		
	    return resposta;
	}
	
	public int quantidadePorEmpresaEtapa(Empresa emp, int idEtapa) {
		EntityManager entityManager = getEntityManager();
		try {
			entityManager.getTransaction().begin();;
		    int a = Integer.parseInt( entityManager.createQuery("SELECT count(e) FROM br.com.IECS.model.Entity.Resposta e "
		    		+ "join e.requisito r "
		    		+ "join r.item i "
		    		+ "join e.avaliacao a "
		    		+ "where i.etapa.id = :idEtapa and a.empresa.id = :idEmpresa")
		    		.setParameter("idEtapa", idEtapa)
		    		.setParameter("idEmpresa", emp.getId())
		    		  .getResultList().get(0).toString());  
		    entityManager.getTransaction().commit();
		    return a;
	    }catch (Exception e) {
				e.printStackTrace();
		}
		
	    return 0;
	}
	
}
