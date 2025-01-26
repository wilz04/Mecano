package mecano;

import java.sql.*;

public class Bill {
  
  private Connection cx;
  private int id;
  private Integer value;
  
  public Bill(Connection cx, Integer value) throws Exception {
    this.id = 0;
    this.cx = cx;
    this.value = value;
    
    PreparedStatement query = cx.prepareStatement("insert into bills(value) values(" + value.toString() + ")");
    query.execute();
  }
  
  public int getId() throws Exception {
    if (id == 0) {
      PreparedStatement query = cx.prepareStatement("select max(id) from bills");
      ResultSet rs = query.executeQuery();
      rs.next();
      id = rs.getInt(1);
    }
    return id;
  }
  
}
