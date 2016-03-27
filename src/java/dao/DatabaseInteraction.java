package dao;

import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author dmitriy
 */
public class DatabaseInteraction {

    public static User getUser(Integer userId) {

        User user;

        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            user = session.get(User.class, userId);
            return user;
        }
    }

    public static User getUser(String userName) {

        User user;

        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            String queryString = "from User where user_name='" + userName + "'";
            user = (User) (session.createQuery(queryString).uniqueResult());
            return user;
        }
    }

    public static boolean usernameTaken(String userName) {
        return getUser(userName) != null;
    }

    public static boolean emailTaken(String email) {

        User user;

        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            String queryString = "from User where user_email='" + email + "'";
            user = (User) (session.createQuery(queryString).uniqueResult());
            if (user == null) {
                return false;
            }
        }
        return true;
    }

    public static List getProductList(){
        
        List products;
        
        try (Session session = HibernateUtil.getSessionFactory().openSession()){
            String queryString = "from Product";
            products = session.createQuery(queryString).list();
            return products;
        }
    }
    
    public static List getProductListByType(int typeID){
        
        List products;
        
        try (Session session = HibernateUtil.getSessionFactory().openSession()){
            String queryString = "from Product where product_type_id=" + typeID;
            products = session.createQuery(queryString).list();
            return products;
        }
    }
    
    public static List getProductTypeList(){
        
        List types;
        
        try (Session session = HibernateUtil.getSessionFactory().openSession()){
            String queryString = "from ProductType";
            types = session.createQuery(queryString).list();
            return types;
        }
        
    }
    
    public static Product getProduct(Integer id){
        Product product;
        
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            product = session.get(Product.class, 1);
            return product;
        }
    }
}
