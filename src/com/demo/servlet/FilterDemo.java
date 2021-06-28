package com.demo.servlet;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 *  Filter 可认为是Servlet 的一种加强版飞它主要用于对用户请求进行预处理，也可以对
	HttpServl etResponse 进行后处理，是个典型的处理链。Filter 也可对用户请求生成响应，这一点与Servlet
	相同，但实际上很少会使用Filter 向用户请求生成响应。使用Filter 完整的流程是: Filter 对用户请求
	进行预处理， 接着将请求交给Servlet进行处理并生成响应，最后Filter 再对服务器响应进行后处理。
	Filter 有如下几个用处。
	> 在HttpServletRequest 到达Servlet 之前，拦截客户的HttpServletRequest.
	> 根据需要检查HttpServletRequest，也可以修改HttpServletRequest 头和数据。
	> 在HttpServletResponse 到达客户端之前， 拦截HttpServletResponse 。
	> 根据需要检查HttpServletResponse，也可以修改HttpServletResponse 头和数据。
	Filter 有如下几个种类。
	> 用户授权的Filter: Filter 负责检查用户请求，根据请求过滤用户非法请求。
	> 日志Filter: 详细记录某些特殊的用户请求。
	> 负责解码的Filter: 包括对非标准编码的请求解码。
	> 能改变XML 内容的XSLT Filter 等。
	> Filter 可负责拦截多个请求或响应: 一个请求或响应也可被多个Filter 拦截。
	创建一个Filter 只需两个步骤:
	1. 创建Filter 处理类。
	2. web.x.rnl 文件中配置Filter。
	
	在实际项目中， Filter里doFilterO方法里的代码就是从多个
	Servlet 的serviceO方法里抽取的通用代码，通过使用Filter 可以实现更好的代码复用。
 */
public class FilterDemo implements Filter {
	private static final long serialVersionUID = 1L;
	private FilterConfig config = null;
    public FilterDemo() {
        super();
        // TODO Auto-generated constructor stub
    }
	@Override
	public void destroy() {
		
	}
	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		System.out.println("FilterDemo doFilter");
		chain.doFilter(request, response);
	}
	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		this.config = arg0;
		System.out.println(config.getFilterName());
	}

}
