import jakarta.servlet.*;
import java.io.*;
import java.util.*;
import jakarta.servlet.http.*;
import com.google.gson.Gson;


public class SearchProductsServlet extends HttpServlet {


    String[] img = {
        "https://www.aptronixindia.com/media/catalog/product/cache/31f0162e6f7d821d2237f39577122a8a/m/b/mbp14-spacegray-select-202110-removebg-preview.png",
        "https://www.pngall.com/wp-content/uploads/13/Nothing-Phone-1-PNG-Cutout.png",
        "https://educatehill.com/wp-content/uploads/2023/01/image-114.png",
        "https://lapgadgets.in/wp-content/uploads/2019/08/green-ssd-sata-family.png.thumb_.1280.1280-1024x1024.png",
        "https://fundamental.in/wp-content/uploads/2021/06/234516_1_wc7roq.png",
        "https://image01.realme.net/general/20220711/1657521687391.png"
    };

    String[] name = {
        "Apple M1 Mac",
        "Nothing Phone (1)",
        "Samsung S22 Ultra",
        "WD SSD combo",
        "Sony Bravia 40\" LED Tv",
        "Realme watch 3"
    };

    String [] price = {
        "Rs 91,999",
        "Rs 31,999",
        "Rs 84,999",
        "Rs 6,999",
        "Rs 49,999",
        "Rs 3,999"
    };


    private List<String> searchProducts(String searchQuery) {
        List<String> products = new ArrayList<>();
        for (int i = 0; i < name.length; i++) {
            if (name[i].toLowerCase().contains(searchQuery.toLowerCase())) {
                products.add(name[i]);
            }
        }
        return products;
    }    

    public void init() throws ServletException {
    }


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String searchQuery = request.getParameter("searchQuery");
        List<String> products = searchProducts(searchQuery);
        
        Gson gson = new Gson();

        String json = gson.toJson(products);
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(json);
    }

    public void destroy() {
    }
}
