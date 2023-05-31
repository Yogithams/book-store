package com.js.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.dao.BookCRUD;
import com.js.dto.Book;

@WebServlet(value="/edit")
public class UpdateStage2 extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		 int id = Integer.parseInt(req.getParameter("id"));
         String bookName = req.getParameter("name");
         String authorName = req.getParameter("author");
         int noOfPages = Integer.parseInt(req.getParameter("nop"));
         double price = Double.parseDouble(req.getParameter("price"));
         
         Book b = new Book();
         b.setId(id);
         b.setBook_name(bookName);
         b.setAuthor_name(authorName);
         b.setNo_of_pages(noOfPages);
         b.setPrice(price);
         
         int result = BookCRUD.UpdateBookbyId(id, b);
         
      
         if(result==1) {
  				RequestDispatcher rd = req.getRequestDispatcher("view");
  				rd.forward(req, resp);
  			}
  	    else {
  				RequestDispatcher rd = req.getRequestDispatcher("result.jsp");
  				req.setAttribute("msg", "No Book Available To Update");
  				rd.forward(req, resp);
  			}
         }
	}

