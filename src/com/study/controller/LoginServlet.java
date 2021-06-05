package com.study.controller;

import com.study.bean.Customer;
import com.study.exception.CustomerException;
import com.study.service.CustomerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @Auther: zhaotj
 * @Date: 2021/6/3 0003 - 06 - 03 - 0:13
 * @Description: com.study.controller
 * @version: 1.0
 */
@WebServlet("/login.action")
public class LoginServlet extends HttpServlet {
    private CustomerService customerService;
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        String name = req.getParameter("name");
        System.out.println("name = " + name);
        String password = req.getParameter("password");
        System.out.println("password = " + password);
        Customer customer = customerService.login(name, password);
        System.out.println("customer = " + customer);
        
        /*Customer customer = null;
        //获取session
        HttpSession session = req.getSession();
        customer = customerService.login(name,password);
        System.out.println("customer = " + customer);
        session.setAttribute("customer",customer);
        resp.sendRedirect(req.getContextPath()+"/index.jsp");
        session.setAttribute("error","密码错误");
        req.getRequestDispatcher("/login.jsp").forward(req,resp);
        System.out.println(customer.toString());*/
    }
}
