package cn.edu.zhku.shms.config;

import javax.servlet.MultipartConfigElement;
import javax.servlet.ServletRegistration.Dynamic;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class SpringWebInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return new Class<?>[]{RootConfig.class};
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		// TODO Auto-generated method stub
		return new Class<?>[]{WebConfig.class};
	}

	@Override
	protected String[] getServletMappings() {
		// TODO Auto-generated method stub
		return new String[] {"/"};
	}
	/**
	 * @param dynamic Servlet动态加载配置
	 */
	@Override
	protected void customizeRegistration(Dynamic dynamic) {
		//文件上传路径
		String filepath = "d:/temp";
		//5MB
		Long singleMax = (long) (5*Math.pow(2, 20));
		//10MB
		Long totalMax = (long) (10*Math.pow(2, 20));
		//配置MultipartResolver，限制请求，单个文件5MB，总共文件10MB
		dynamic.setMultipartConfig(new MultipartConfigElement(filepath, singleMax, totalMax, 0));
	}
}
