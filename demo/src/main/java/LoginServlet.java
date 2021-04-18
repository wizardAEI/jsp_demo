import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet  extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username=req.getParameter("username");
        String password=req.getParameter("password");
        System.out.println("name:"+username);
        System.out.println("password:"+password);
        if("aei".equals(username)&&"842655".equals(password)){
            //跳转界面
            req.setAttribute("username",username);
            req.getRequestDispatcher("/index.jsp").forward(req,resp);
        }
        else{
            //用户名或密码错误
            req.setAttribute("username",username);
            req.setAttribute("error","用户名或密码错误");
            req.getRequestDispatcher("/login.jsp").forward(req,resp);
        }
        this.doPost(req,resp);
    }
}
