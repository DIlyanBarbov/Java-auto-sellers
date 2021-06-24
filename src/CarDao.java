import java.sql.Connection;
import java.sql.PreparedStatement;

public class CarDao {
    public static int save(String model, String brand, int year, String price) {
        int status = 0;
        try {
            Connection con = DB.getConnection();
            PreparedStatement ps = con.prepareStatement("insert into cars(model, brand, year, price) values(?,?,?,?)");
            ps.setString(1, brand);
            ps.setString(2, brand);
            ps.setInt(3, year);
            ps.setString(4, price);
            status = ps.executeUpdate();
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
}
