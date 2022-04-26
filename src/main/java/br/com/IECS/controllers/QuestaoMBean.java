package br.com.IECS.controllers;

import java.util.Date;
import java.util.List;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.component.html.HtmlSelectBooleanCheckbox;
import javax.faces.context.FacesContext;

import br.com.IECS.model.DAO.AvaliacaoDAO;
import br.com.IECS.model.DAO.RespostaDAO;
import br.com.IECS.model.Entity.Avaliacao;
import br.com.IECS.model.Entity.Empresa;
import br.com.IECS.model.Entity.Etapa;
import br.com.IECS.model.Entity.Item;
import br.com.IECS.model.Entity.Requisito;

@ManagedBean
@SessionScoped
public class QuestaoMBean {
	
	private List<Item> itens;
	private Etapa etapa;
	private int indexRequisitoAtual, indexItemAtual,indexEtapaAtual, totalQuestoes, contadorQuestoes;
	private Avaliacao avaliacao;
	private Empresa empresa;
	private AvaliacaoDAO avaliacaoDAO;
	private RespostaDAO respostaDAO;
	private String textoCheck = "Não";
	private HtmlSelectBooleanCheckbox checkbox;

	public QuestaoMBean() throws Exception {
		if(avaliacao == null) avaliacao = new Avaliacao();
		if(avaliacaoDAO == null) avaliacaoDAO = new AvaliacaoDAO();
		if(respostaDAO == null) respostaDAO = new RespostaDAO();
	}
	
	public String iniciarQuestionario(Empresa empresa, Etapa etp) {
		 try {
			FacesContext context = FacesContext.getCurrentInstance();
			
			if(!context.getExternalContext().getSessionMap().containsKey("email") ||
					!context.getExternalContext().getSessionMap().containsKey("empresa")) {
				FacesContext.getCurrentInstance().getExternalContext().getSessionMap().clear();
				return "/index.jsf?faces-redirect=true";
			}
			
			
			this.empresa = (Empresa) context.getExternalContext().getSessionMap().get("empresa");
			this.avaliacao = avaliacaoDAO.getByIdEmpresa(this.empresa.getId());
			
			if(this.avaliacao == null) {
				this.avaliacao = new Avaliacao();
				this.avaliacao.setDataResposta(new Date());
				this.avaliacao.setEmpresa(this.empresa);
			}
			
			this.indexRequisitoAtual = 0;
			this.indexItemAtual = 0;
			this.totalQuestoes = 0;
			this.contadorQuestoes = 1;
			this.etapa = etp;
			this.itens = etapa.getItens();
			totalQuestoes();
			textoCheck = "Não";
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return "/questao.jsf";
	}
	
	public String totalQuestoes() {
		 try {
			for (Item item : itens) {
				totalQuestoes += item.getRequisitos().size();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return "/questao.jsf";
	} 
	
	public String proximaPergunta() throws Exception {
		
		isPularItem();
		if( this.itens.size() == this.indexItemAtual + 1 
				&& this.itens.get(this.indexItemAtual).getRequisitos().size() <= this.indexRequisitoAtual + 1)
		{
			return salvarDados();
		}else if(this.itens.get(this.indexItemAtual).getRequisitos().size() <= this.indexRequisitoAtual + 1) {
			this.indexRequisitoAtual = 0;
			this.indexItemAtual++;
		}
		else{
			this.indexRequisitoAtual++;
		}
		this.contadorQuestoes++;
		verificarResposta();
		return "/questao.jsf";
		
	}
	
	public String voltarPergunta() throws Exception {
		
		if(this.indexRequisitoAtual > 0)
		{
			this.indexRequisitoAtual--;
		}else if(this.indexRequisitoAtual == 0) {
			this.indexItemAtual--;
			this.indexRequisitoAtual =  this.itens.get(this.indexItemAtual).getRequisitos().size() -1;
		}
		this.contadorQuestoes--;
		verificarResposta();
			
			
		return "/questao.jsf";
		
	}

	private void verificarResposta() {
		if(this.itens.get(this.indexItemAtual).getRequisitos().get(this.indexRequisitoAtual).getResposta().isResposta())
			textoCheck = "Sim";
		else
			textoCheck = "Não";
	}

	private void isPularItem() {
		if(this.itens.get(this.indexItemAtual).getRequisitos().get(this.indexRequisitoAtual).isPularItem() 
				&& ! this.itens.get(this.indexItemAtual).getRequisitos().get(this.indexRequisitoAtual).getResposta().isResposta()) {
			this.contadorQuestoes += this.itens.get(this.indexItemAtual).getRequisitos().size() - this.indexRequisitoAtual -1; 
			this.indexRequisitoAtual = this.itens.get(this.indexItemAtual).getRequisitos().size() + 1;
		}
	}

	private String salvarDados() throws Exception {
		avaliacaoDAO.salvar(avaliacao);
		for (Item i : this.itens) {
			for (Requisito r : i.getRequisitos()) {
				r.getResposta().setAvaliacao(avaliacao);
				r.getResposta().setRequisito(r);
				respostaDAO.salvar(r.getResposta());
			}
				
		}
		etapa.setHasResposta(true);
		return "/formEmpresa.jsf?faces-redirect=true&includeViewParams=true&email=" + empresa.getEmail();
		
	}
	
	public String cancelar() {
		 
		return "/index.jsf"; 
	}


	/**
	 * @return the indexRequisitoAtual
	 */
	public int getIndexRequisitoAtual() {
		return indexRequisitoAtual;
	}


	/**
	 * @return the avaliacao
	 */
	public Avaliacao getAvaliacao() {
		return avaliacao;
	}

	/**
	 * @param avaliacao the avaliacao to set
	 */
	public void setAvaliacao(Avaliacao avaliacao) {
		this.avaliacao = avaliacao;
	}

	/**
	 * @return the empresa
	 */
	public Empresa getEmpresa() {
		return empresa;
	}

	/**
	 * @param empresa the empresa to set
	 */
	public void setEmpresa(Empresa empresa) {
		this.empresa = empresa;
	}

	/**
	 * @return the indexItemAtual
	 */
	public int getIndexItemAtual() {
		return indexItemAtual;
	}

	/**
	 * @return the totalQuestoes
	 */
	public int getTotalQuestoes() {
		return totalQuestoes;
	}

	/**
	 * @return the contadorQuestoes
	 */
	public int getContadorQuestoes() {
		return contadorQuestoes;
	}

	/**
	 * @return the itens
	 */
	public List<Item> getItens() {
		return itens;
	}

	/**
	 * @return the indexEtapaAtual
	 */
	public int getIndexEtapaAtual() {
		return indexEtapaAtual;
	}

	/**
	 * @return the etapa
	 */
	public Etapa getEtapa() {
		return etapa;
	}

	/**
	 * @param etapa the etapa to set
	 */
	public void setEtapa(Etapa etapa) {
		this.etapa = etapa;
	}

	/**
	 * @return the textoCheck
	 */
	public String getTextoCheck() {
		return textoCheck;
	}

	/**
	 * @param textoCheck the textoCheck to set
	 */
	public void setTextoCheck(String textoCheck) {
		this.textoCheck = textoCheck;
	}
	
	public void submit() {
		System.out.println("AQUI!!");
	    if((boolean) checkbox.getValue()) 
	    	this.textoCheck = "Sim";
	    else
	    	this.textoCheck = "Não";
	}

	/**
	 * @return the checkbox
	 */
	public HtmlSelectBooleanCheckbox getCheckbox() {
		return checkbox;
	}

	/**
	 * @param checkbox the checkbox to set
	 */
	public void setCheckbox(HtmlSelectBooleanCheckbox checkbox) {
		this.checkbox = checkbox;
	}

}
