package com.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class LoginInterceptor extends AbstractInterceptor {

	private static final long serialVersionUID = 4956767125951165062L;

	// ����Action��������ط���
	public String intercept(ActionInvocation invocation) throws Exception {

		// ȡ��������ص�ActionContextʵ��
		ActionContext ctx = invocation.getInvocationContext();
		Map<String, Object> session = ctx.getSession();
		// ȡ����Ϊuser��Session����
		String user = (String) session.get("userLogin");

		// ����Ѿ����û���¼������
		if (user != null) {
			System.out.println("�û���¼�ˣ�");
			return invocation.invoke();
		}

		// ��ȡHttpServletRequest����
		HttpServletRequest req = ServletActionContext.getRequest();

		// ��ȡ������ĵ�ַ
		String path = req.getRequestURI();
		System.out.println("path:" + path);
		// ����session���������
		session.put("prePage", path);

		// ֱ�ӷ���login���߼���ͼ
		return "begin";
	}
}
