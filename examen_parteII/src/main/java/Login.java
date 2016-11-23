
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import com.google.gson.Gson;


@WebServlet(name = "Login")
public class Login extends HttpServlet {

    protected void doPost (HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException {

        String result = null;
        List<String> result1=null;
        String nombre = request.getParameter("login");
        String contraseña = request.getParameter("contraseña");
       // String lista = request.getParameter("lista");
        Usuarios user = new Usuarios();
        try{

          user = Fachada.getInstance().listUsuarios(nombre);
        }catch (Exception e){
            e.printStackTrace();
        }
        if(user == null){
            try{
            Fachada.getInstance().añadirUsuario(nombre, contraseña);
            result= ("Usuario "+nombre);
                request.setAttribute("Result",result);
                request.getRequestDispatcher("Result.jsp").forward(request,response);
        }catch (Exception e){
            e.printStackTrace();
        }
        }else {
            result=(" "+nombre);
            List<String> lisEtakamon =Fachada.getInstance().listaEtakamons(nombre);
           result1 = lisEtakamon;
            // List<String> list = new ArrayList<String>();
            //for (int i=0;i<lisEtakamon.size();i++) {
                //user = (Usuarios) Fachada.getInstance().listaEtakamons(nombre);
              //  list.add(lisEtakamon.get(i));
                //list = user.etakamons;

            // response.setContentType("text/html");
            // response.getOutputStream().print(" "+list);
             request.setAttribute("Result1", result1);
            getServletContext().getRequestDispatcher("Etakemon.jsp").forward(request,response);
            //  request.getRequestDispatcher("Result.jsp").forward(request, response);

        }

        request.setAttribute("Result",result);
        request.getRequestDispatcher("Result.jsp").forward(request,response);

          //  if(user !=null) {

            //}


    }


}
