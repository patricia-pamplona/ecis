package br.com.IECS.model.Entity;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "etapa")
public class Etapa {
	
	@Id
	@Column(name = "id_etapa")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(nullable = false)
	private String descricao;
	
	@Column(nullable = false)
	private int ordem;
	
	@Column(nullable = false)
	private String img;
	
	@OneToMany(mappedBy="etapa", fetch = FetchType.LAZY)
	private List<Item> itens = new ArrayList<Item>();
	
	@Transient
	private boolean hasResposta;

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the descricao
	 */
	public String getDescricao() {
		return descricao;
	}

	/**
	 * @param descricao the descricao to set
	 */
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	/**
	 * @return the ordem
	 */
	public int getOrdem() {
		return ordem;
	}

	/**
	 * @param ordem the ordem to set
	 */
	public void setOrdem(int ordem) {
		this.ordem = ordem;
	}

	/**
	 * @return the itens
	 */
	public List<Item> getItens() {
		Collections.sort(this.itens);
		return this.itens;
	}

	/**
	 * @param itens the itens to set
	 */
	public void setItens(List<Item> itens) {
		this.itens = itens;
	}

	/**
	 * @return the img
	 */
	public String getImg() {
		return img;
	}

	/**
	 * @param img the img to set
	 */
	public void setImg(String img) {
		this.img = img;
	}

	/**
	 * @return the hasResposta
	 */
	public boolean isHasResposta() {
		return hasResposta;
	}

	/**
	 * @param hasResposta the hasResposta to set
	 */
	public void setHasResposta(boolean hasResposta) {
		this.hasResposta = hasResposta;
	}

}
