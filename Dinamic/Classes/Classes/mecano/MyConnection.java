package mecano;

import java.sql.*;

class MyConnection {
  
  private String id;
  private String pwd;
  protected Connection me;
  
  public MyConnection() {
    init("root", "poligon");
    open("localhost", "mecano");
  }
  
  public void init(String id, String pwd) {
    this.id = id;
    this.pwd = pwd;
    me = null;
  }
  
  public void open(String url, String base) {
    try {
      Class.forName("com.mysql.jdbc.Driver");
      me = DriverManager.getConnection("jdbc:mysql://" + url + "/" + base, id, pwd);
    } catch(Exception e) {
      System.out.println("Cx.doConnect: " + e.toString());
    }
  }
  
  public void close() {
    try {
      me.close();
    } catch (Exception e) {
      System.out.println("Cx.close: " + e.toString());
    }
  }
  
}
