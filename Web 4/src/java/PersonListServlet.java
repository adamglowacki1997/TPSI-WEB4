import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "PersonListServlet", urlPatterns = {"/personList"})
public class PersonListServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Person> persons = new ArrayList<>();
        persons.add(new Person("Adam", "Głowa", "adglo@zut.edu.pl"));
        persons.add(new Person("Jan", "Kowalski", "jako@zut.edu.pl"));
        persons.add(new Person("Pawel", "Nowak", "pano@zut.edu.pl"));
        persons.add(new Person("Marcin", "Kowalnowa", "mako@zut.edu.pl"));
        persons.add(new Person("Marian", "Szczecinski", "masz@zut.edu.pl"));
        persons.add(new Person("Kazimierz", "Kwiatkowaski", "kakw@zut.edu.pl"));
        persons.add(new Person("Michal", "Michalowa", "mimi@zut.edu.pl"));
        persons.add(new Person("Patryk", "Patrykowa", "papa@zut.edu.pl"));
        
        
        request.setAttribute("persons", persons);
        request.getRequestDispatcher("personList.jsp").forward(request, response);

    }
    
   
}