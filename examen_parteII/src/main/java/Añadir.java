import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by pauli on 18/11/2016.
 */

public class Añadir extends HttpServlet{

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<String> list = new ArrayList<String>();
        Usuarios user = new Usuarios();
        String nombre= request.getParameter("nombre");
        String nombreEtakemon = request.getParameter("nombreEtakemon");
        List<String> result;
        Fachada.getInstance().crearEtakamons(nombre,nombreEtakemon);
        response.setContentType("application/html");
        response.setCharacterEncoding("UTF-8");

        list = Fachada.getInstance().listaEtakamons(nombre);
        result=list;
        //response.setContentType("text/html");
        //response.getOutputStream().print(" "+result);
        request.setAttribute("Result",result);
        request.getRequestDispatcher("Result.jsp").forward(request,response);
        //request.setAttribute("result",result);

    }



    }

