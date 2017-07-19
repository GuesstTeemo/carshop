package cn.itcast.shop.utils;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
 
/**
 * 字符过滤器
 */
public class CharEncodingFilter implements Filter {
//设置为UTF-8
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        chain.doFilter(request, response);
    }
//初始化
    public void init(FilterConfig filterConfig) throws ServletException {
         
    }
//销毁
    public void destroy() {
    }
 
}
