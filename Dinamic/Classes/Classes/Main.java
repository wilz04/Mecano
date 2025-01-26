import mecano.*;

class Main {
  
  public static void main(String args[]) {
    User user = new User();
    System.out.println(user.login("3396579", "050005"));
    try { System.out.println(user.buy(4000).getId()); } catch (Exception e) { System.out.println(e);}
    user.exit();
  }
  
}
