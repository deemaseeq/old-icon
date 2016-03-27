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
public class DescriptionProcessing {

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
    
    public static void main(String[] args) {
        
    }
    
}
