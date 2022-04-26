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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "item")
public class Item implements Comparable<Item>{

	@Id
	@Column(name = "id_item")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(nullable = false)
	private String descricao;
	
	@Column(nullable = false)
	private int ordem;
	
	@Column(name="plano_acao", nullable = false)
	private String planoAcao;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="id_etapa")
	private Etapa etapa;
	
	@OneToMany(mappedBy="item", fetch = FetchType.LAZY)
	private List<Requisito> requisitos = new ArrayList<Requisito>();

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
	 * @return the requisitos
	 */
	public List<Requisito> getRequisitos() {
		Collections.sort(this.requisitos);
		return this.requisitos;
	}

	/**
	 * @param requisitos the requisitos to set
	 */
	public void setRequisitos(List<Requisito> requisitos) {
		this.requisitos = requisitos;
	}
	

	@Override
	public int compareTo(Item i) {
		if (this.ordem < i.getOrdem() && this.etapa.getId() == i.getEtapa().getId()) {
            return -1;
        }
        if (this.ordem > i.getOrdem() && this.etapa.getId() == i.getEtapa().getId()) {
            return 1;
        }
        return 0;
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
	 * @return the planoAcao
	 */
	public String getPlanoAcao() {
		return planoAcao;
	}

	/**
	 * @param planoAcao the planoAcao to set
	 */
	public void setPlanoAcao(String planoAcao) {
		this.planoAcao = planoAcao;
	}
	
}
