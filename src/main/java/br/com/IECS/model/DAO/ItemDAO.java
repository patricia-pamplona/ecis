package br.com.IECS.model.DAO;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;

import br.com.IECS.model.Entity.Item;
import br.com.IECS.util.GenericDAO;

public class ItemDAO extends GenericDAO {

	public void salvar(Item item) throws Exception {
		EntityManager entityManager = getEntityManager();
		try {
			entityManager.getTransaction().begin();
			
			if(item.getId() == 0) {
				System.out.println("incluindo a empresa");
				entityManager.persist(item);
			} else {
				System.out.println("atualizando a empresa");
				item = entityManager.merge(item);
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
		    Item item = entityManager.find(Item.class, id);
		    entityManager.remove(item);
		    entityManager.getTransaction().commit();
	    }catch (Exception e) {
	    	e.printStackTrace();
            entityManager.getTransaction().rollback();
		}
	}

	@SuppressWarnings("unchecked")
	public List<Item> listar() {
		EntityManager entityManager = getEntityManager();
		List<Item>  itens = null;
		try {
		    itens = entityManager.createQuery("SELECT e FROM br.com.IECS.model.Entity.Item e "
		    		+ "order by e.ordem")
		    		  .getResultList();  
	    }catch (Exception e) {
				e.printStackTrace();
		}
		
	    return itens;
	}
	
	public List<Item> ConsultarItensPlano(int idEmpresa) {
		EntityManager entityManager = getEntityManager();
		EtapaDAO etapaDAO = new EtapaDAO();
		List<Item>  itens = new ArrayList<Item>();
		Item itemAux;
		try {
			StringBuilder sb = new StringBuilder();
			sb.append("SELECT i.id_item, i.descricao, i.ordem, i.plano_acao, i.id_etapa ");
			sb.append("FROM item i ");
			sb.append("INNER JOIN ( ");
			sb.append("SELECT ");
			sb.append("t.id_item, ");
			sb.append("round((cast(t.pontos as decimal)/ total) * 100, 2)  as percentual ");
			sb.append("FROM( ");
			sb.append("SELECT ");
			sb.append("i.id_item, ");
			sb.append("sum(case when r.resposta then 1 else 0 end) pontos, ");
			sb.append("count(*) total ");
			sb.append("from resposta r ");
			sb.append("inner join avaliacao a on a.id_avaliacao = r.id_avaliacao ");
			sb.append("inner join requisito rq on rq.id_requisito = r.id_requisito ");
			sb.append("inner join item i on i.id_item = rq.id_item ");
			sb.append("inner join etapa e on e.id_etapa = i.id_etapa ");
			sb.append("where a.id_empresa = ").append(idEmpresa).append(" ");
			sb.append("group by i.id_item ");
			sb.append(")T ");
			sb.append("order by 2 ");
			sb.append("LIMIT 4 ");
			sb.append(") p ON p.id_item = i.id_item ");
			sb.append("WHERE p.percentual < 100 ");
			sb.append("ORDER BY i.id_etapa ");
			
			List<Object[]> result = entityManager.createNativeQuery(sb.toString())
					.getResultList();
			
			for (Object[] objects : result) {
				itemAux = new Item();
				itemAux.setId(Integer.parseInt(objects[0].toString()));
				itemAux.setDescricao(objects[1].toString());
				itemAux.setOrdem(Integer.parseInt(objects[2].toString()));
				itemAux.setPlanoAcao(objects[3].toString());
				itemAux.setEtapa(etapaDAO.getById(Integer.parseInt(objects[4].toString())));
				itens.add(itemAux);
			}
	    }catch (Exception e) {
			e.printStackTrace();
		}
		
		return itens;
	}
	
}