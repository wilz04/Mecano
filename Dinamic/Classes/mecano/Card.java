package mecano;

import java.sql.*;

class Card {
  
  private Connection cx;
  private String id;
  private String type;
  private Integer value;
  
  public Card(Connection cx, String id, String type) throws Exception {
    this.cx = cx;
    this.id = id;
    this.type = type;
    
    PreparedStatement query = cx.prepareStatement("select value from cards Where id = '" + id + "'");
    ResultSet rs = query.executeQuery();
    if (rs.next()) {
      value = rs.getInt("value");
    } else {
      value = null;
    }
  }
  
  public String getId() {
    return id;
  }
  
  public String getType() {
    return type;
  }
  
  public void setValue(Integer value) {
    this.value = value;
  }
  
  public Integer getValue() {
    return value;
  }
  
}
