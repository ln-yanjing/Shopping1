package com.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.po.Products;
import com.service.ProductsService;
import com.service.Impl.ProductsServiceImpl;

/**
 * Servlet implementation class ProductsServlet
 */
@WebServlet("/ProductsServlet")
public class ProductsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String action=request.getParameter("action");
		if(action!=null)
		{
			if(action.equals("add")){
				add(request,response);
			}
			else if(action.equals("findbyid"))
			
			{
				findbyid(request,response);
			}
			else if(action.equals("findall"))
			{
				findall(request,response);
			}
			else if(action.equals("updateproducts"))
			{
				updateproducts(request,response);
			}
			else if(action.equals("findAll"))
			{
				findAll(request,response);
			}
			else if(action.equals("del")){
				deleceproducts(request,response);
			}
		}
	}

	private void deleceproducts(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int id=Integer.valueOf(request.getParameter("id"));
		ProductsServiceImpl productsService=new ProductsServiceImpl();
		int b=productsService.deleceproducts(id);
	if(b>0)
	{
		response.sendRedirect("ProductsServlet?action=findAll");
	}
	else
	{
		response.sendRedirect("admin/findbyid.jsp");
	}
	}

	private void findAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductsServiceImpl productsService=new ProductsServiceImpl();
		List<Products> list=productsService.findAll();
		if(list!=null){
		request.setAttribute("listProducts", list);
		request.getRequestDispatcher("admin/productsList.jsp").forward(request, response);
		}
		else
		{
			response.sendRedirect("admin/fail.jsp");
		}
	}
	private void updateproducts(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		Products p=new Products();
		p.setId(Integer.valueOf(request.getParameter("id")));
		p.setName(request.getParameter("name"));
		p.setPrice(Double.valueOf(request.getParameter("price")));
		p.setPnum(Integer.valueOf(request.getParameter("punm")));
		p.setCategory(request.getParameter("category"));
		p.setImgurl(request.getParameter("imgurl"));
		p.setDesciption(request.getParameter("desciption"));
		ProductsService productsService=new ProductsServiceImpl();
		int b=productsService.updateproducts(p);
	
		if(b>0)
		{
			response.sendRedirect("ProductsServlet?action=findAll");
		}
		else
		{
			response.sendRedirect("admin/findbyid.jsp");
		}
		
	}

	private void findall(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	private void findbyid(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		// TODO Auto-generated method stub
		int id=Integer.valueOf(request.getParameter("id"));
		ProductsServiceImpl productsService=new ProductsServiceImpl();
		Products p=productsService.findbyid(id);
			request.setAttribute("pp", p);
			request.getRequestDispatcher("admin/updateProducts.jsp").forward(request, response);
			
		}
	
	private void add(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		Products p=new Products();
		p.setName(request.getParameter("name"));
		p.setPrice(Double.valueOf(request.getParameter("price")));
		p.setPnum(Integer.valueOf(request.getParameter("pnum")));
		p.setCategory(request.getParameter("category"));
		p.setImgurl(request.getParameter("imgurl"));
		p.setDesciption(request.getParameter("desciption"));
		ProductsServiceImpl productsService=new ProductsServiceImpl();
		int b=productsService.add(p);
		if(b>0)
		{
			response.sendRedirect("index.jsp");
		}
		else
		{
			response.sendRedirect("admin/add.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
