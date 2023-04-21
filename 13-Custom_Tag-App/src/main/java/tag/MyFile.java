package tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class MyFile  extends TagSupport{
	
	public double radius;
public double getRadius() {
		return radius;
	}
	public void setRadius(double radius) {
		this.radius = radius;
	}
public int doStartTag() throws JspException {
		
		try {
			JspWriter out= pageContext.getOut();
			out.println("<h1>Squer area="+3.14*radius*radius+"</h1>");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return SKIP_BODY;

}
}
