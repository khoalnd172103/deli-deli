/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package News;

import Utils.DBUtils;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class NewsDAO {
    
    public static ArrayList<String> getAllNewsCategory() {
        ArrayList<String> result = new ArrayList<>();
        Connection cn = null;

        try {
            cn = DBUtils.getConnection();

            if (cn != null) {
                String sql = "SELECT title FROM NewsCategory";

                PreparedStatement pst = cn.prepareStatement(sql);
                ResultSet rs = pst.executeQuery();
                if (rs != null) {
                    while (rs.next()) {
                        String title = rs.getString("title");;

                        result.add(title);
                    }
                }
                rs.close();
                pst.close();
                cn.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }

    public static String getNewsAuthorByNewsId(int id) {
        String result = "";
        Connection cn = null;

        try {
            cn = DBUtils.getConnection();

            if (cn != null) {
                String sql = "SELECT user_name FROM [User] u\n"
                        + "INNER JOIN [News] n\n"
                        + "ON u.id = n.user_id\n"
                        + "WHERE n.id = ?";

                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setInt(1, id);
                ResultSet rs = pst.executeQuery();
                if (rs != null) {
                    while (rs.next()) {
                        result = rs.getString("user_name");
                    }
                }
                rs.close();
                pst.close();
                cn.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }

    public static String getNewsCategoryByNewsId(int id) {
        String result = "";
        Connection cn = null;

        try {
            cn = DBUtils.getConnection();

            if (cn != null) {
                String sql = "SELECT nc.title FROM NewsCategory nc \n"
                        + "INNER JOIN News n\n"
                        + "ON nc.id = n.news_category_id\n"
                        + "WHERE n.id = ?";

                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setInt(1, id);
                ResultSet rs = pst.executeQuery();
                if (rs != null) {
                    while (rs.next()) {
                        result = rs.getString("title");
                    }
                }
                rs.close();
                pst.close();
                cn.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }

    public static ArrayList<NewsDTO> getAllNews() {
        ArrayList<NewsDTO> result = new ArrayList<>();
        Connection cn = null;

        try {
            cn = DBUtils.getConnection();

            if (cn != null) {
                String sql = "SELECT * FROM News";

                PreparedStatement pst = cn.prepareStatement(sql);
                ResultSet rs = pst.executeQuery();
                if (rs != null) {
                    while (rs.next()) {
                        int id = rs.getInt("id");
                        String title = rs.getString("title");
                        String description = rs.getString("description");
                        String image = rs.getString("image");
                        Date create_at = rs.getDate("create_at");
                        Date update_at = rs.getDate("update_at");
                        int user_id = rs.getInt("user_id");
                        int news_category_id = rs.getInt("news_category_id");

                        NewsDTO news = new NewsDTO(id, title, description, image, create_at, update_at, user_id, news_category_id);
                        result.add(news);
                    }
                }
                rs.close();
                pst.close();
                cn.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }

    public static NewsDTO getNewsByNewsId(int id) {
        NewsDTO news = null;
        Connection cn = null;

        try {
            cn = DBUtils.getConnection();

            if (cn != null) {
                String sql = "SELECT * FROM News WHERE id = ?";

                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setInt(1, id);
                ResultSet rs = pst.executeQuery();
                if (rs != null) {
                    while (rs.next()) {
                        String title = rs.getString("title");
                        String description = rs.getString("description");
                        String image = rs.getString("image");
                        Date create_at = rs.getDate("create_at");
                        Date update_at = rs.getDate("update_at");
                        int user_id = rs.getInt("user_id");
                        int news_category_id = rs.getInt("news_category_id");

                        news = new NewsDTO(id, title, description, image, create_at, update_at, user_id, news_category_id);
                    }
                }
                rs.close();
                pst.close();
                cn.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return news;
    }

    public static void main(String[] args) {
        //System.out.println(NewsDAO.getNewsByNewsId(2));
//        ArrayList<NewsDTO> list = NewsDAO.getAllNews();
//        for (NewsDTO o : list) {
//            System.out.println(o);
//        }
        System.out.println(NewsDAO.getAllNewsCategory());
    }
}