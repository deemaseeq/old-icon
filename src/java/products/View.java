package products;

import dao.DatabaseInteraction;
import dao.Product;
import java.io.File;
import java.io.FileReader;
import java.util.List;

/**
 *
 * @author dmitriy
 */
public class View {

//    static List<Product> products;
//    
//    static {
//        products = DatabaseInteraction.getProductList();
//    }
    public static String getProductDescription(String src) {

        File descr = new File("web/" + src);
        String result = "EMPTY DESCRIPTION";
        StringBuilder builder = new StringBuilder();
        

        try (FileReader reader = new FileReader(descr)) {
            
            while (reader.read() != -1){
                result.concat(Integer.toString(reader.read()));
            }
            
            //result = builder.toString();
            
        } catch (Exception e) {
            
        }

        System.out.println("RESULT");
        System.out.println(result);
        return result;
    }
    

//    public static String showProduct(Product product) {
//        
//        StringBuilder html = new StringBuilder();
//        
//        html.append("<div>");
//        
//        html.append("<h3>");
//        html.append(product.getProductTypeID());
//        html.append(" ");
//        html.append(product.getProductName());
//        html.append(" ");
//        html.append(product.getProductID());
//        html.append("</h3>");
//        
//        html.append("<img src = \"");
//        html.append(product.getProductPic());
//        html.append("\" />");
//        
//        html.append("<p>");
//        html.append("Цена - ");
//        html.append(product.getProductPrice());
//        html.append("</p>");
//        
//        html.append("</div>");
//        
//        String productElement = html.toString();
//        return productElement;
//    }
//    
//    public static String showProductList(){
//        StringBuilder builder = new StringBuilder();
//
//        products.stream().forEach((Product product) -> {
//            builder.append(showProduct(product));
//        });
//        
//        String productList = builder.toString();
//        return productList;
//    }
}
