package com.demo.servlet;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 *  Filter ����Ϊ��Servlet ��һ�ּ�ǿ�������Ҫ���ڶ��û��������Ԥ����Ҳ���Զ�
	HttpServl etResponse ���к����Ǹ����͵Ĵ�������Filter Ҳ�ɶ��û�����������Ӧ����һ����Servlet
	��ͬ����ʵ���Ϻ��ٻ�ʹ��Filter ���û�����������Ӧ��ʹ��Filter ������������: Filter ���û�����
	����Ԥ���� ���Ž����󽻸�Servlet���д���������Ӧ�����Filter �ٶԷ�������Ӧ���к���
	Filter �����¼����ô���
	> ��HttpServletRequest ����Servlet ֮ǰ�����ؿͻ���HttpServletRequest.
	> ������Ҫ���HttpServletRequest��Ҳ�����޸�HttpServletRequest ͷ�����ݡ�
	> ��HttpServletResponse ����ͻ���֮ǰ�� ����HttpServletResponse ��
	> ������Ҫ���HttpServletResponse��Ҳ�����޸�HttpServletResponse ͷ�����ݡ�
	Filter �����¼������ࡣ
	> �û���Ȩ��Filter: Filter �������û����󣬸�����������û��Ƿ�����
	> ��־Filter: ��ϸ��¼ĳЩ������û�����
	> ��������Filter: �����ԷǱ�׼�����������롣
	> �ܸı�XML ���ݵ�XSLT Filter �ȡ�
	> Filter �ɸ������ض���������Ӧ: һ���������ӦҲ�ɱ����Filter ���ء�
	����һ��Filter ֻ����������:
	1. ����Filter �����ࡣ
	2. web.x.rnl �ļ�������Filter��
	
	��ʵ����Ŀ�У� Filter��doFilterO������Ĵ�����ǴӶ��
	Servlet ��serviceO�������ȡ��ͨ�ô��룬ͨ��ʹ��Filter ����ʵ�ָ��õĴ��븴�á�
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
