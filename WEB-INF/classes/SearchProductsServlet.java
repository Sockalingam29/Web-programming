import javax.servlet.*;
import java.io.*;
import java.util.*;
import javax.servlet.http.*;
import com.google.gson.Gson;
import java.sql.*;


public class SearchProductsServlet extends HttpServlet {

    class Products {
        String img;
        String name;
        String price;

        public Products(String img, String name, String price) {
            this.img = img;
            this.name = name;
            this.price = price;
        }
    }


    private List<Products> searchProducts(List<Products> productsList, String searchQuery) {
        List<Products> matchingProducts = new ArrayList<Products>();
        for (int i = 0; i < productsList.size(); i++) {
            if (productsList.get(i).name.toLowerCase().contains(searchQuery.toLowerCase())) {
                matchingProducts.add(productsList.get(i));
            }
        }
        return matchingProducts;
    }    

    public void init() throws ServletException {
    }


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String searchQuery = request.getParameter("searchQuery");
        List<Products> productsList = new ArrayList<>();

        try {
            // Class.forName("com.mysql.cj.jdbc.Driver");
            Class.forName("oracle.jdbc.driver.OracleDriver");   

            // Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/webprog", "root", "");
            Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "oracle1");

            Statement stmt = conn.createStatement();
            ResultSet result = stmt.executeQuery("SELECT * FROM PRODUCT");

            while (result.next()) {
            int id= result.getInt("id");
                String name = result.getString("name");  
                String price = result.getString("price");
                String image = result.getString("image");

                productsList.add(new Products(image, name, price));
                
            }

            List<Products> products = searchProducts(productsList,searchQuery);
            
            Gson gson = new Gson();

            String json = gson.toJson(products);
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(json);
            
            result.close();
            stmt.close();
            conn.close();
        } catch (Exception e) {
            response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write(e.toString());
        }
    }

    public void destroy() {
    }
}
