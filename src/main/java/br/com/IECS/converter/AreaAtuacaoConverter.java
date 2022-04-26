package br.com.IECS.converter;

import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.ConverterException;
import javax.faces.convert.FacesConverter;

import br.com.IECS.model.DAO.AreaAtuacaoDAO;
import br.com.IECS.model.Entity.AreaAtuacao;


@FacesConverter(value="areAtuacaoConverter", forClass= AreaAtuacao.class)
public class AreaAtuacaoConverter implements Converter {

	@Override
	public Object getAsObject(FacesContext arg0, UIComponent arg1, String value)
			throws ConverterException {
		if (value == null || value.equals("")) {
			System.out.println("Valor nulo no conversor de Area de atuação");
		}else {
			AreaAtuacao areaAtuacao = new AreaAtuacao();
			try {
				AreaAtuacaoDAO areaAtuacaoDAO = new AreaAtuacaoDAO();
				areaAtuacao = areaAtuacaoDAO.getById(Integer.parseInt(value));
				return areaAtuacao;
			} catch (NumberFormatException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return null;
		
	}

	@Override
	public String getAsString(FacesContext arg0, UIComponent arg1, Object object)
			throws ConverterException {
		try {
			if (object == null) {
				System.out.println("Valor nulo no conversor de Area de Atuação");
			}else {
				return  String.valueOf( ((AreaAtuacao) object).getId());
			}
		} catch (ConverterException e) {
			e.printStackTrace();
		}
		return null;

	}

}
