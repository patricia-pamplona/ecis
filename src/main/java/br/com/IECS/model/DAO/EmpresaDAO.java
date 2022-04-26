package br.com.IECS.model.DAO;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;

import br.com.IECS.model.Entity.Empresa;
import br.com.IECS.util.GenericDAO;


public class EmpresaDAO extends GenericDAO {

	public void salvar(Empresa empresa) throws Exception {
		EntityManager entityManager = getEntityManager();
		try {
			entityManager.getTransaction().begin();
			
			if(empresa.getId() == 0) {
				System.out.println("incluindo a empresa");
				entityManager.persist(empresa);
			} else {
				System.out.println("atualizando a empresa");
				empresa = entityManager.merge(empresa);
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
		    Empresa empresa = entityManager.find(Empresa.class, id);
		    entityManager.remove(empresa);
		    entityManager.getTransaction().commit();
	    }catch (Exception e) {
	    	e.printStackTrace();
            entityManager.getTransaction().rollback();
		}
	}

	@SuppressWarnings("unchecked")
	public List<Empresa> listar() {
		EntityManager entityManager = getEntityManager();
		List<Empresa>  empresas = null;
		try {
		    empresas = entityManager.createQuery("SELECT e FROM br.com.IECS.model.Entity.Empresa e "
		    		+ "inner join e.areaAtuacao")
		    		  .getResultList(); 
	    }catch (Exception e) {
				e.printStackTrace();
		}
		
	    return empresas;
	}
	
	public Empresa getByEmail(String email) {
		EntityManager entityManager = getEntityManager();
		Empresa  empresa = null;
		try {
			empresa = (Empresa) entityManager.createQuery("from br.com.IECS.model.Entity.Empresa where upper(email) = upper(:email)")
				.setParameter("email", email).getSingleResult();
	    }catch (Exception e) {
			return empresa;
		}
		
	    return empresa;
	}
	
	public Double ConsultarPercentualSGA(int idEmpresa) {
		EntityManager entityManager = getEntityManager();
		try {
			StringBuilder sb = new StringBuilder();
			sb.append("SELECT ");
			sb.append("round((cast(t.pontos as decimal)/ total) * 100, 2)  as percentual ");
			sb.append("FROM( ");
			sb.append("SELECT ");
			sb.append("sum(case when r.resposta then 1 else 0 end) pontos, ");
			sb.append("count(*) total ");
			sb.append("from resposta r ");
			sb.append("inner join avaliacao a on a.id_avaliacao = r.id_avaliacao ");
			sb.append("inner join requisito rq on rq.id_requisito = r.id_requisito ");
			sb.append("inner join item i on i.id_item = rq.id_item ");
			sb.append("inner join etapa e on e.id_etapa = i.id_etapa ");
			sb.append("where a.id_empresa = ").append(idEmpresa);
			sb.append("AND rq.is_sga ");
			sb.append(")T ");
			return Double.parseDouble(entityManager.createNativeQuery(sb.toString())
					.getSingleResult().toString());
			
			
			
	    }catch (Exception e) {
				e.printStackTrace();
		}
		
	    return 0.0;
	}
	
	public Double ConsultarPercentualSGC(int idEmpresa) {
		EntityManager entityManager = getEntityManager();
		try {
			StringBuilder sb = new StringBuilder();
			sb.append("SELECT ");
			sb.append("round((cast(t.pontos as decimal)/ total) * 100, 2)  as percentual ");
			sb.append("FROM( ");
			sb.append("SELECT ");
			sb.append("sum(case when r.resposta then 1 else 0 end) pontos, ");
			sb.append("count(*) total ");
			sb.append("from resposta r ");
			sb.append("inner join avaliacao a on a.id_avaliacao = r.id_avaliacao ");
			sb.append("inner join requisito rq on rq.id_requisito = r.id_requisito ");
			sb.append("inner join item i on i.id_item = rq.id_item ");
			sb.append("inner join etapa e on e.id_etapa = i.id_etapa ");
			sb.append("where a.id_empresa = ").append(idEmpresa);
			sb.append("AND (rq.is_sgc or rq.is_sga) ");
			sb.append(")T ");
			return Double.parseDouble(entityManager.createNativeQuery(sb.toString())
					.getSingleResult().toString());
			
			
			
	    }catch (Exception e) {
				e.printStackTrace();
		}
		
	    return 0.0;
	}
	
	public List<Object> ConsultarPercentualEtapas(int idEmpresa) {
		EntityManager entityManager = getEntityManager();
		try {
			StringBuilder sb = new StringBuilder();
			sb.append("SELECT ");
			sb.append("t.descricao, ");
			sb.append("round((cast(t.pontos as decimal)/ total) * 100, 2)  as percentual ");
			sb.append("FROM( ");
			sb.append("SELECT ");
			sb.append("e.descricao, ");
			sb.append("sum(case when r.resposta then 1 else 0 end) pontos, ");
			sb.append("count(*) total, ");
			sb.append("e.ordem ");
			sb.append("from resposta r ");
			sb.append("inner join avaliacao a on a.id_avaliacao = r.id_avaliacao ");
			sb.append("inner join requisito rq on rq.id_requisito = r.id_requisito ");
			sb.append("inner join item i on i.id_item = rq.id_item ");
			sb.append("inner join etapa e on e.id_etapa = i.id_etapa ");
			sb.append("where a.id_empresa = ").append(idEmpresa).append(" ");
			sb.append("group by e.descricao,e.ordem ");
			sb.append("order by e.ordem ");
			sb.append(")T ");
			List<Object> result = entityManager.createNativeQuery(sb.toString())
					.getResultList();
			return result;
			
			
			
	    }catch (Exception e) {
				e.printStackTrace();
		}
		
	    return new ArrayList<Object>();
	}
	
	public List<Object[]> ConsultarPercentualItens(int idEtapa, int idEmpresa) {
		EntityManager entityManager = getEntityManager();
		try {
			StringBuilder sb = new StringBuilder();
			sb.append("SELECT ");
			sb.append("t.descricao, ");
			sb.append("round((cast(t.pontos as decimal)/ total) * 100, 2)  as percentual ");
			sb.append("FROM( ");
			sb.append("SELECT ");
			sb.append("i.descricao, ");
			sb.append("sum(case when r.resposta then 1 else 0 end) pontos, ");
			sb.append("count(*) total, ");
			sb.append("i.ordem ");
			sb.append("from resposta r ");
			sb.append("inner join avaliacao a on a.id_avaliacao = r.id_avaliacao ");
			sb.append("inner join requisito rq on rq.id_requisito = r.id_requisito ");
			sb.append("inner join item i on i.id_item = rq.id_item ");
			sb.append("inner join etapa e on e.id_etapa = i.id_etapa ");
			sb.append("where a.id_empresa = ").append(idEmpresa).append(" ");
			sb.append("and e.id_etapa = ").append(idEtapa).append(" ");
			sb.append("group by i.descricao, i.ordem ");
			sb.append("order by i.ordem ");
			sb.append(")T ");
			List<Object[]> result = entityManager.createNativeQuery(sb.toString())
					.getResultList();
			return result;
			
			
			
	    }catch (Exception e) {
			e.printStackTrace();
		}
		
	    return new ArrayList<Object[]>();
	}

}
