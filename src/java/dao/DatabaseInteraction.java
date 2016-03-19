/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

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

    public static Product showProduct() {

        Product product;
        
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            product = session.get(Product.class, 1);
            return product;
        }
    }
}
