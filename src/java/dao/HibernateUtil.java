/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.io.File;
import org.hibernate.cfg.Configuration;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.SessionFactoryBuilder;
import org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl;

/**
 * Hibernate Utility class with a convenient method to get Session Factory object.
 *
 * @author dmitriy
 */
public class HibernateUtil {

    private static final SessionFactory sessionFactory;

    static {
        // Create the SessionFactory from standard (hibernate.cfg.xml) 
        // config file.

        //Build the StandardServiceRegistry
        //Need to configure, explore API
        final StandardServiceRegistry registry = new StandardServiceRegistryBuilder()
                .configure("hibernate.cfg.xml")
                .build();

        //Build the Metadata
        //A lot of methods, explore API if necessary
        Metadata metadata = new MetadataSources(registry)
//                .addAnnotatedClass(User.class)
//                .addAnnotatedClassName("dao.User")
                .addResource("resources/hibernate-mapping/Order.hbm.xml")
                .addResource("resources/hibernate-mapping/Product.hbm.xml")
                .addResource("resources/hibernate-mapping/ProductType.hbm.xml")
                .addResource("resources/hibernate-mapping/User.hbm.xml")
                .addResource("resources/hibernate-mapping/UserGroup.hbm.xml")
                .getMetadataBuilder()
                .applyImplicitNamingStrategy(ImplicitNamingStrategyJpaCompliantImpl.INSTANCE)
                .build();

        try {

            //Use those 2 things to build the SessionFactory
            sessionFactory = metadata.getSessionFactoryBuilder().build();
//                    new Configuration()
//                    .configure(new File("G:/OneDrive/NB Projects/OldIcon/src/java/hibernate.cfg.xml"))
//                    .buildSessionFactory(registry);

        } catch (Throwable ex) {
            // Log the exception. 
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public static void closeSessionFactory() {
        sessionFactory.close();
    }
}
