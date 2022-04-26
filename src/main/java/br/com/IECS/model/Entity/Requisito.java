package br.com.IECS.model.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "requisito")
public class Requisito implements Comparable<Requisito>{
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_requisito")
	private int id;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="id_item")
	private Item item;
	
	@Column(nullable = false)
	private String descricao;
	
	@Column(nullable = false)
	private String pergunta;
	
	@Column(nullable = false)
	private int ordem;
	
	@Column(name = "is_sga", nullable = false)
	private boolean isSGA;
	
	@Column(name = "is_sgc", nullable = false)
	private boolean isSGC;
	
	@Column(name = "is_pular_item", nullable = false)
	private boolean	isPularItem;

	@Transient
	private Resposta resposta;

	
	public Requisito() {
		resposta = new Resposta();
	}
	
	/**
	 * @return the isSGA
	 */
	public boolean isSGA() {
		return isSGA;
	}

	/**
	 * @param isSGA the isSGA to set
	 */
	public void setSGA(boolean isSGA) {
		this.isSGA = isSGA;
	}

	/**
	 * @return the resposta
	 */
	public Resposta getResposta() {
		return resposta;
	}

	/**
	 * @param resposta the resposta to set
	 */
	public void setResposta(Resposta resposta) {
		this.resposta = resposta;
	}

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
	 * @return the item
	 */
	public Item getItem() {
		return item;
	}

	/**
	 * @param item the item to set
	 */
	public void setItem(Item item) {
		this.item = item;
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
	 * @return the pergunta
	 */
	public String getPergunta() {
		return pergunta;
	}

	/**
	 * @param pergunta the pergunta to set
	 */
	public void setPergunta(String pergunta) {
		this.pergunta = pergunta;
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
	 * @return the isSGE
	 */
	public boolean isSGE() {
		return isSGA;
	}

	/**
	 * @param isSGE the isSGE to set
	 */
	public void setSGE(boolean isSGE) {
		this.isSGA = isSGE;
	}

	/**
	 * @return the isSGC
	 */
	public boolean isSGC() {
		return isSGC;
	}

	/**
	 * @param isSGC the isSGC to set
	 */
	public void setSGC(boolean isSGC) {
		this.isSGC = isSGC;
	}
	
	/**
	 * @return the isPularItem
	 */
	public boolean isPularItem() {
		return isPularItem;
	}

	/**
	 * @param isPularItem the isPularItem to set
	 */
	public void setPularItem(boolean isPularItem) {
		this.isPularItem = isPularItem;
	}

	@Override
	public int compareTo(Requisito r) {
		if (this.ordem < r.getOrdem()) {
            return -1;
        }
        if (this.ordem > r.getOrdem()) {
            return 1;
        }
        return 0;
	}

}
