package br.com.IECS.converter;

import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.ConverterException;
import javax.faces.convert.FacesConverter;

import br.com.IECS.model.DAO.PorteEmpresaDAO;
import br.com.IECS.model.Entity.PorteEmpresa;

@FacesConverter(value="porteEmpresaConverter", forClass= PorteEmpresa.class)
public class PorteEmpresaConverter implements Converter {

	@Override
	public Object getAsObject(FacesContext arg0, UIComponent arg1, String value)
			throws ConverterException {
		if (value == null || value.equals("")) {
			System.out.println("Valor nulo no conversor de PorteEmpresa");
		}else {
			PorteEmpresa porteEmpresa = new PorteEmpresa();
			try {
				PorteEmpresaDAO porteEmpresaDAO = new PorteEmpresaDAO();
				porteEmpresa = porteEmpresaDAO.getById(Integer.parseInt(value));
				return porteEmpresa;
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
				System.out.println("Valor nulo no conversor de PorteEmpresa");
			}else {
				return  String.valueOf( ((PorteEmpresa) object).getId());
			}
		} catch (ConverterException e) {
			e.printStackTrace();
		}
		return null;

	}

}
