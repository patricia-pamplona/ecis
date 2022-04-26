package br.com.IECS.controllers;

import javax.faces.bean.ManagedBean;
import javax.faces.context.FacesContext;

@ManagedBean(name = "paginaInicialMBean")
public class PaginaInicialMBean {
	
	public String entrarAvaliacao(){
		FacesContext.getCurrentInstance().getExternalContext().getSessionMap().clear();
		return "/formEmail.jsf?faces-redirect=true";
	}
	
	public String entrarPaginaInicial(){
		FacesContext.getCurrentInstance().getExternalContext().getSessionMap().clear();
		return "/index.jsf?faces-redirect=true";
	}

}
