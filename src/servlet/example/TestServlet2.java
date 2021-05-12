package servlet.example;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//URL-mapping
//2. web.xml에 선언하는 방법(어노테이션방법과 같이 사용할 수 없음.)
//프로젝트하위에 Deployment Descriptor 우클릭 Generate Deployment Descriptor Stub하면 Web-INF폴더에web.xml파일이 생성됨
/*
 *  
  <web-app>안쪽에 이렇게 작성
  <servlet>
  	<servlet-name>appServlet</servlet-name>
  	<servlet-class>servlet.example.TestServlet2</servlet-class>
  </servlet>
  
  <servlet-mapping>
  	<servlet-name>appServlet</servlet-name>
  	<url-pattern>/peach</url-pattern>
  </servlet-mapping>
 */
public class TestServlet2 extends HttpServlet {	      
	private static final long serialVersionUID = 1L;


	public TestServlet2() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		System.out.println("her!");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
