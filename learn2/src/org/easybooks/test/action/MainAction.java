package org.easybooks.test.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.*;
import org.easybooks.test.jdbc.SqlSrvDBConn;
import org.easybooks.test.model.vo.*;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

public class MainAction extends ActionSupport {
    private UserTable user;

    public String execute() throws Exception {
        String username = user.getUsername();
        String password = user.getPassword();
        boolean validated = false;
        SqlSrvDBConn sqlSrvDBConn = new SqlSrvDBConn();
        ActionContext context = ActionContext.getContext();
        Map session = context.getSession(); //获得会话对象 用来保存当前登录用户的信息
        UserTable user1 = null;
        //先获得UserTable对象 如果是第一次访问该页 用户对象 肯定为空 但是 如果是 第二次甚至
        // 第三次 就直接登录 主页 而无须 再次验证用户的信息
        // 同 talkboard 原因 只是 实现方法不同 servlet 和 jsp
        // servlet 是 Httpsession session = request.getSession();
        user1 = (UserTable) session.get("user"); // servlet 是 getAttribut()
        if (user1 == null) {
            //查询 userTable 表中 的记录
            String sql = "select * from usertable";
            ResultSet rs = sqlSrvDBConn.executeQuery(sql);
            try {
                while (rs.next()) {
                    if (rs.getString("username").trim().compareTo(username) == 0 &&
                            rs.getString("password").trim().compareTo(password) == 0) {
                        user1 = new UserTable();// 创建持久化 的 JavaBean对象
                        user1.setId(rs.getInt("id"));
                        user1.setUsername(rs.getString("username"));
                        user1.setPassword(rs.getString("password"));
                        session.put("user", user1); // servlet session.setAttribute()
                        if(session.get("user")==null)System.out.println("The error is null ");
                        else System.out.println("There is not error");
                        validated = true;
                    }
                }
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            sqlSrvDBConn.closeStmt();
            sqlSrvDBConn.closeConn();
        } else {
            validated = true;
        }
        if (validated) {
            return "success";
        } else {
            return "error";
        }
    }

    public UserTable getUser() {
        return user;
    }

    public void setUser(UserTable user){
        this.user = user;
    }
}
