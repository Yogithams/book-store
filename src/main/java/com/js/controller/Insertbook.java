package com.js.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.dao.BookCRUD;
import com.js.dao.PersoncRUD;
import com.js.dto.Book;
import com.js.dto.Person;

@WebServlet(value="/savebook")
public class Insertbook extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
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
         
         int result = BookCRUD.insertBook(b);
         RequestDispatcher rd = req.getRequestDispatcher("result.jsp");
         if(result==1) {
       	  req.setAttribute("msg", "Book inserted Successfully");
       	  rd.forward(req, resp);
         }
         else {
       	  req.setAttribute("msg", "Failed, try again!");
       	  rd.forward(req, resp);
         }
	}
}
