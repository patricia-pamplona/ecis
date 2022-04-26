package br.com.IECS.controllers;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.faces.application.Application;
import javax.faces.bean.ManagedBean;
import javax.faces.component.UIViewRoot;
import javax.faces.context.FacesContext;

import org.primefaces.model.chart.DonutChartModel;
import org.primefaces.model.charts.ChartData;
import org.primefaces.model.charts.axes.cartesian.CartesianScales;
import org.primefaces.model.charts.axes.cartesian.linear.CartesianLinearAxes;
import org.primefaces.model.charts.axes.cartesian.linear.CartesianLinearTicks;
import org.primefaces.model.charts.bar.BarChartOptions;
import org.primefaces.model.charts.hbar.HorizontalBarChartDataSet;
import org.primefaces.model.charts.hbar.HorizontalBarChartModel;
import org.primefaces.model.charts.optionconfig.title.Title;

import br.com.IECS.model.DAO.EmpresaDAO;
import br.com.IECS.model.DAO.EtapaDAO;
import br.com.IECS.model.DAO.ItemDAO;
import br.com.IECS.model.Entity.Empresa;
import br.com.IECS.model.Entity.Etapa;
import br.com.IECS.model.Entity.Item;

@ManagedBean
public class ResultadoMBean {
	private Empresa empresa;
	
	private DonutChartModel donutSGA, donutSGC;
	private EmpresaDAO empresaDAO;
	private EtapaDAO etapaDAO;
	private ItemDAO itemDAO;
	private List<Item> itens;
	
	public void carregarPagina(Empresa empresa) {
		empresaDAO = new EmpresaDAO();
		etapaDAO = new EtapaDAO();
		itemDAO = new ItemDAO();
		this.empresa = empresa;
		itens = itemDAO.ConsultarItensPlano(this.empresa.getId());
		initDonutModel();
		FacesContext context = FacesContext.getCurrentInstance();
		Application app = context.getApplication();
		UIViewRoot view = app.getViewHandler().createView(context, "/resultados.jsf");
		
		context.setViewRoot(view);
		context.renderResponse();
	
	}
	
	private void initDonutModel() {
		Double percentualSGA = empresaDAO.ConsultarPercentualSGA(empresa.getId());
		donutSGA = new DonutChartModel();
        donutSGA.setShowDataLabels(true);
        Map<String, Number> circleSGA = new LinkedHashMap<String, Number>();
        circleSGA.put(percentualSGA +"%", percentualSGA);
        circleSGA.put((100.0-percentualSGA) + "%", 100.0-percentualSGA);
        donutSGA.addCircle(circleSGA);
        donutSGA.setTitle("Conformidade com a ISO 14.001:2015");
        donutSGA.setSeriesColors("00BFFF,a9a9a9");
        
        Double percentualSGC = empresaDAO.ConsultarPercentualSGC(empresa.getId());
        donutSGC = new DonutChartModel();
        donutSGC.setShowDataLabels(true);
        Map<String, Number> circleSGC = new LinkedHashMap<String, Number>();
        circleSGC.put(percentualSGC +"%", percentualSGC);
        circleSGC.put((100.0-percentualSGC) + "%", 100.0-percentualSGC);
        donutSGC.addCircle(circleSGC);
        donutSGC.setTitle("Compliance Ambiental");
        donutSGC.setSeriesColors("00BFFF,a9a9a9");
    }
	
	public DonutChartModel donut(String title, Double percentual) {
		if(percentual == null)
			percentual = 0.0;
		DonutChartModel donut = new DonutChartModel();
		donut.setShowDataLabels(true);
        Map<String, Number> circle = new LinkedHashMap<String, Number>();
        circle.put(percentual +"%", percentual);
        circle.put((100-percentual) + "%", 100-percentual);
        donut.addCircle(circle);
        donut.setTitle("Etapa de " + title);
        donut.setSeriesColors("00BFFF,a9a9a9");
        return donut;
    }
	
	 public HorizontalBarChartModel horizontalBarModel(int idEtapa, String descricaoEtapa) {
		 	HorizontalBarChartModel hbarModel = new HorizontalBarChartModel();
		 	ChartData data = new ChartData();
	        HorizontalBarChartDataSet hbarDataSet = new HorizontalBarChartDataSet();
	        List<Number> values = new ArrayList<>();
	        List<String> labels = new ArrayList<>();
	        List<String> bgColor = new ArrayList<>();
	        List<String> borderColor = new ArrayList<>();
	        hbarDataSet.setLabel("% de requisitos cumpridos");
	        int rIncremento = 0, gIncremento = 0, bIncremento = 0, index = 0;
	        List<Object[]> itens = itensPercentuais(idEtapa);
	        for (Object[]  object : itens) {
	        	index++;
	        	values.add(Double.parseDouble(object[1].toString()));
	        	labels.add(object[0].toString());
	        	rIncremento -= (index*(255/itens.size()));
	        	gIncremento += (index*(255/itens.size()));
	        	bIncremento += (index*(255/itens.size()));
	        	bgColor.add("rgba(" + (255 + rIncremento) + "," + (60 + gIncremento) + "," + (150 + bIncremento) + ", 0.2)");
	        	borderColor.add("rgb(" + (255 + rIncremento) + "," + (60 + gIncremento) + "," + (150 + bIncremento) + ")");
			}        

	        hbarDataSet.setData(values);
	        hbarDataSet.setBackgroundColor(bgColor);
	        hbarDataSet.setBorderColor(borderColor);
	        hbarDataSet.setBorderWidth(1);
	        data.setLabels(labels);
	        data.addChartDataSet(hbarDataSet);
	        hbarModel.setData(data);

	        //Options
	        BarChartOptions options = new BarChartOptions();
	        CartesianScales cScales = new CartesianScales();
	        CartesianLinearAxes linearAxes = new CartesianLinearAxes();
	        CartesianLinearTicks ticks = new CartesianLinearTicks();
	        ticks.setBeginAtZero(true);
	        ticks.setMax(100);
	        ticks.setMaxTicksLimit(100);
	        ticks.setStepSize(10);
	        ticks.setAutoSkip(false);
	        ticks.setMin(100);
	        linearAxes.setTicks(ticks);
	        cScales.addXAxesData(linearAxes);
	        options.setScales(cScales);

	        Title title = new Title();
	        title.setDisplay(true);
	        title.setText(descricaoEtapa);
	        options.setTitle(title);

	        hbarModel.setOptions(options);
	        return hbarModel;
	    }
	
	public List<Object> getEtapasPercentuais() {
		return empresaDAO.ConsultarPercentualEtapas(empresa.getId());
	}
	
	public List<Object[]> itensPercentuais(int idEtapa) {
		return empresaDAO.ConsultarPercentualItens(idEtapa, empresa.getId());
	}
	
	public List<Etapa> getEtapas() {
		return etapaDAO.listar();
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
	 * @return the donutSGA
	 */
	public DonutChartModel getdonutSGA() {
		return donutSGA;
	}

	/**
	 * @param donutSGA the donutSGA to set
	 */
	public void setdonutSGA(DonutChartModel donutSGA) {
		this.donutSGA = donutSGA;
	}

	/**
	 * @return the donutSGC
	 */
	public DonutChartModel getDonutSGC() {
		return donutSGC;
	}

	/**
	 * @param donutSGC the donutSGC to set
	 */
	public void setDonutSGC(DonutChartModel donutSGC) {
		this.donutSGC = donutSGC;
	}

	/**
	 * @return the itens
	 */
	public List<Item> getItens() {
		return itens;
	}

	/**
	 * @param itens the itens to set
	 */
	public void setItens(List<Item> itens) {
		this.itens = itens;
	}

}
