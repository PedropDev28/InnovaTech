/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package es.innovatech.filters;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
/**
 *
 * @author pedro
 */


/**
 * Servlet Filter implementation class Utf8
 */
@WebFilter(filterName = "Utf8", urlPatterns = {"/*"})
public class Utf8 implements Filter {

    private String encoding;

    /**
     * Método inicial del filtro
     * @param fConfig Objeto FilterConfig
     * @throws ServletException Excepción que se puede producir
     */
    @Override
    public void init(FilterConfig fConfig) throws ServletException {
        encoding = fConfig.getInitParameter("requestEncoding");
        if (encoding == null) {
            encoding = "UTF-8";
        }
    }

    /**
     * Método final del filtro
     * @see Filter#destroy()
     */
    @Override
    public void destroy() {
    }

    /**
     * Método que se ejecuta en cada petición de recursos
     * @param request objeto ServletRequest
     * @param response objeto ServletResponse
     * @param chain objeto FilterChain
     * @throws java.io.IOException Excepción que se puede producir
     * @throws javax.servlet.ServletException Excepción que se puede producir
     * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
     */
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        request.setCharacterEncoding(encoding);

        // pass the request along the filter chain
        chain.doFilter(request, response);
    }

}