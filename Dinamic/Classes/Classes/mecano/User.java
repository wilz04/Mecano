package mecano;

import java.sql.*;
import java.util.Date;
import javax.swing.JOptionPane;

public class User extends MyConnection {
  
  private String _id;
  private Card card;
  
  public User() {
    super();
    _id = null;
    card = null;
  }
  
  public boolean login(String id, String pwd) {
    _id = id;
    try {
      PreparedStatement query = me.prepareStatement("select type from cards where owner = '" + _id + "' and id = '" + pwd + "'");
      ResultSet rs = query.executeQuery();
      if (rs.next()) {
        card = new Card(me, pwd, rs.getString("type"));
        return true;
      }
    } catch (Exception e) {
      JOptionPane.showMessageDialog(null, "User.login: " + e.toString(), "Mecano", JOptionPane.INFORMATION_MESSAGE);
    }
    return false;
  }
  
  public Integer getValue() {
    return card.getValue();
  }
  
  public Bill buy(Integer total) {
    try {
      if (card != null) {
        if (total <= card.getValue()) {
          PreparedStatement query;
          Date now = new Date();
          query = me.prepareStatement("insert into pays values('" + _id + "', '" + card.getId() + "', '" + (now.getYear()+1900) + "/" + (now.getMonth()+1) + "/" + now.getDate() + "', '" + total.toString() + "', '" + card.getType() + "')");
          query.execute();
          card.setValue(card.getValue()-total);
          query = me.prepareStatement("update cards set value = '" + card.getValue().toString() + "' where id = '" + card.getId() + "'");
          query.executeUpdate();
          return new Bill(me, total);
        }
      }
    } catch (Exception e) {
      System.out.println("User.buy: " + e.toString());
    }
    return null;
  }
  
  public void exit() {
    try {
      close();
    } catch (Exception e) {
      //JOptionPane.showMessageDialog(null, "User.exit: " + e.toString(), "Mecano", JOptionPane.INFORMATION_MESSAGE);
    }
  }
  
}
