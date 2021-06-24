import java.sql.*;

public class RegisterCarSaleDao {

    public static boolean checkCar(int id) {
        boolean status = false;
        try {
            Connection con = DB.getConnection();
            PreparedStatement ps = con.prepareStatement("select * from cars where id = ?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            status = rs.next();
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int save(int car_id, String buyer_name, String buyer_contact) {
        int status = 0;
        try {
            Connection con = DB.getConnection();

            status = updateCar(car_id);//updating car is sold

            if (status > 0) {
                PreparedStatement ps = con.prepareStatement("insert into car_sells(car_id,buyer_name, buyer_contact) values(?,?,?)");
                ps.setInt(1, car_id);
                ps.setString(2, buyer_name);
                ps.setString(3, buyer_contact);
                status = ps.executeUpdate();
            }

            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int updateCar(int car_id) {
        int status = 0;
        boolean sold = false;
        try {
            Connection con = DB.getConnection();
            PreparedStatement ps = con.prepareStatement("select model, brand, sold from cars where id=?");
            ps.setInt(1, car_id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                sold = rs.getBoolean("sold");
            }

            if (!sold) {
                PreparedStatement ps2 = con.prepareStatement("update cars set sold=? where id=?");
                ps2.setBoolean(1, true);
                ps2.setInt(2, car_id);
                status = ps2.executeUpdate();
            }
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
}
