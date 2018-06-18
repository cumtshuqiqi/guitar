package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import dao.dataAccess;
import model.Instrument;
import model.InstrumentSpec;
import model.Inventory;
import service.InstrumentService;

/**
 * Servlet implementation class InstrumentService
 */
@WebServlet("/serachGuitar")
public class InstrumentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InstrumentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("执行service");
		InstrumentService instrumentSrv = new InstrumentService();
		 Map map =request.getParameterMap();
		
		 InstrumentSpec searchSpec = new InstrumentSpec(map);
			System.out.println(map);
			List result = instrumentSrv.searchInstrument(searchSpec);
			request.setAttribute("guitars",result);
			request.getRequestDispatcher("guitar/index.jsp").forward(request,response);
//			
//		InstrumentService instrumentSrv = new InstrumentService();
//     	//���ݲ�ѯ��������InstrumentSpec��ͨ������ʹ�ö������л�����
//		InstrumentSpec searchSpec = new InstrumentSpec(null);
//		List result = instrumentSrv.searchInstrument(searchSpec);
//		
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	}
	
	public void initInventory(Inventory inventory){
		
		ClassPathXmlApplicationContext ac = new ClassPathXmlApplicationContext("beans.xml");
		InstrumentService us = 
				(InstrumentService)ac.getBean("instrumentService");
		//assertNotEquals(null, us);
		inventory = us.getInventory();
	}

}
