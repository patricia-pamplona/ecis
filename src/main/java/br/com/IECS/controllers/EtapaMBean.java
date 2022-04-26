package br.com.IECS.controllers;

import java.util.List;

import javax.faces.application.Application;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.component.UIViewRoot;
import javax.faces.context.FacesContext;

import br.com.IECS.model.DAO.EtapaDAO;
import br.com.IECS.model.DAO.RespostaDAO;
import br.com.IECS.model.Entity.Empresa;
import br.com.IECS.model.Entity.Etapa;

@ManagedBean
@SessionScoped
public class EtapaMBean {
	
	private Empresa empresa;
	private List<Etapa> etapas;
	private int idEtapa;
	private int etapasFinalizadas = 0;
	EtapaDAO etapaDAO;
	RespostaDAO respostaDAO;
	
	public EtapaMBean() {
		FacesContext context = FacesContext.getCurrentInstance();
		
		if(!context.getExternalContext().getSessionMap().containsKey("email") || !context.getExternalContext().getSessionMap().containsKey("empresa")) {
			FacesContext.getCurrentInstance().getExternalContext().getSessionMap().clear();
			Application app = context.getApplication();
			UIViewRoot view = app.getViewHandler().createView(context, "/index.jsf?faces-redirect=true");
			context.setViewRoot(view);
			context.renderResponse();
		}
		
		etapaDAO = new EtapaDAO();
		respostaDAO = new RespostaDAO();
		this.empresa = (Empresa) context.getExternalContext().getSessionMap().get("empresa");
		verificarRespostas();
	}
	
	public List<Etapa> getEtapas(){
		if(etapas == null) {
			etapas = etapaDAO.listar();
			for (Etapa etapa : etapas) {
				if(respostaDAO.quantidadePorEmpresaEtapa(empresa, etapa.getId())==0) {
					etapa.setHasResposta(false);
				}else {
					etapa.setHasResposta(true);
				}
			}
		}
		verificarRespostas();
		return etapas;
	}
	
	public String verificarRespostas() {
		etapasFinalizadas = 0;
		if(etapas != null) {
			for (Etapa etapa : etapas) {
				if(etapa.isHasResposta()) {
					etapasFinalizadas++;
				}
			}
		}
		return null;
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
	 * @return the idEtapa
	 */
	public int getIdEtapa() {
		return idEtapa;
	}

	/**
	 * @param idEtapa the idEtapa to set
	 */
	public void setIdEtapa(int idEtapa) {
		this.idEtapa = idEtapa;
	}

	/**
	 * @param etapas the etapas to set
	 */
	public void setEtapas(List<Etapa> etapas) {
		this.etapas = etapas;
	}

	/**
	 * @return the etapasFinalizadas
	 */
	public int getEtapasFinalizadas() {
		return etapasFinalizadas;
	}

	/**
	 * @param etapasFinalizadas the etapasFinalizadas to set
	 */
	public void setEtapasFinalizadas(int etapasFinalizadas) {
		this.etapasFinalizadas = etapasFinalizadas;
	}

}
