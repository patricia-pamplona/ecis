package br.com.IECS.controllers;

import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.context.FacesContext;

import br.com.IECS.util.Email;
import net.bytebuddy.utility.RandomString;

@ManagedBean
public class EmailMBean {
	
	private String email;
	private String codigoGerado;
	private String codigoValidacao;
	
	/**
	 * @return the codigoGerado
	 */
	public String getCodigoGerado() {
		return codigoGerado;
	}

	/**
	 * @param codigoGerado the codigoGerado to set
	 */
	public void setCodigoGerado(String codigoGerado) {
		this.codigoGerado = codigoGerado;
	}

	/**
	 * @return the codigoValidacao
	 */
	public String getCodigoValidacao() {
		return codigoValidacao;
	}

	/**
	 * @param codigoValidacao the codigoValidacao to set
	 */
	public void setCodigoValidacao(String codigoValidacao) {
		this.codigoValidacao = codigoValidacao;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String entrarConfirmarEmail(){
		return "formValidarEmail?faces-redirect=true&includeViewParams=true";
	}
	
	public String reenviarEmail(String email){
		return "formValidarEmail?faces-redirect=true&includeViewParams=true&email=" + email;
	}
	
	public void enviarEmail(){
		FacesContext context = FacesContext.getCurrentInstance();
		context.getExternalContext().getSessionMap().put("email", this.email);
		this.codigoGerado = RandomString.make(6);
		Email.EnviarEmail(this.email, this.codigoGerado);
	}

	
	public String entrarDadosEmpresa() {
		if(this.codigoValidacao.equals(this.codigoGerado)) {
			return carregaPaginaEmpresa();
		}
		else {
			return carregarErroValidacao();
		}
	}

	private String carregarErroValidacao() {
		System.out.println(this.codigoValidacao + " - " + this.codigoGerado);
		FacesMessage msg = new FacesMessage("Código inválido!");
		msg.setSeverity(FacesMessage.SEVERITY_INFO);
		FacesContext.getCurrentInstance().addMessage("", msg);
		return "/formValidarEmail?includeViewParams=true";
	}
	
	private String carregaPaginaEmpresa() {
		return "/formEmpresa.jsf?faces-redirect=true&includeViewParams=true";
	}

}
