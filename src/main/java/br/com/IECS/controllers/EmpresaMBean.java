package br.com.IECS.controllers;

import java.util.List;

import javax.faces.application.Application;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.component.UIViewRoot;
import javax.faces.context.FacesContext;

import br.com.IECS.model.DAO.AreaAtuacaoDAO;
import br.com.IECS.model.DAO.EmpresaDAO;
import br.com.IECS.model.DAO.PorteEmpresaDAO;
import br.com.IECS.model.Entity.AreaAtuacao;
import br.com.IECS.model.Entity.Empresa;
import br.com.IECS.model.Entity.PorteEmpresa;

@ManagedBean
@RequestScoped
public class EmpresaMBean {
	
	private Empresa empresa;
	private PorteEmpresaDAO porteEmpresaDAO;
	private AreaAtuacaoDAO areaAtuacaoDAO;
	private EmpresaDAO empresaDAO;
	
	public EmpresaMBean() {
		if(empresa == null) empresa = new Empresa();
		if(empresaDAO == null) empresaDAO = new EmpresaDAO();
		if(areaAtuacaoDAO == null) areaAtuacaoDAO = new AreaAtuacaoDAO();
		if(porteEmpresaDAO == null) porteEmpresaDAO = new PorteEmpresaDAO();
	}
	
	public String verificarEmpresa() {
		FacesContext context = FacesContext.getCurrentInstance();
		
		if(!context.getExternalContext().getSessionMap().containsKey("email")) {
			FacesContext.getCurrentInstance().getExternalContext().getSessionMap().clear();
			return "/index.jsf?faces-redirect=true";
		}
		
		this.empresa.setEmail(context.getExternalContext().getSessionMap().get("email").toString());
		Empresa empresa2 = empresaDAO.getByEmail(empresa.getEmail());
		
		if(empresa2 != null) {
			this.empresa = empresa2;
			context.getExternalContext().getSessionMap().put("empresa", empresa);
			Application app = context.getApplication();
			UIViewRoot view = app.getViewHandler().createView(context, "/etapas.jsf");
			
			context.setViewRoot(view);
			context.renderResponse();
		}
		return null;
			
	}
	
	public String cadastrarEmpresa() throws Exception {
		empresaDAO.salvar(empresa);
		
		FacesContext context = FacesContext.getCurrentInstance();
		context.getExternalContext().getSessionMap().put("empresa", empresa);
		Application app = context.getApplication();
		UIViewRoot view = app.getViewHandler().createView(context, "/etapas.jsf");
		
		context.setViewRoot(view);
		context.renderResponse();
		
		return null;
			
	}
	
	public Empresa getEmpresa() { 
		return empresa; 
	}
	
	public void setEmpresa(Empresa empresa) { 
		this.empresa = empresa;
	}
	
	public List<AreaAtuacao> getAreaAtuacaoList() { 
		return areaAtuacaoDAO.listar(); 
	}
	
	public List<PorteEmpresa> getPorteEmpresaList() { 
		return porteEmpresaDAO.listar(); 
	} 

}
