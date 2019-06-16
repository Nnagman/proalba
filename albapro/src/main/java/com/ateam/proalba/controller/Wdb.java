package com.ateam.proalba.controller;

import java.io.*;
import java.nio.charset.Charset;
import java.net.*;
import java.sql.*;
import java.util.Calendar;

class Server {

   public void serverStart() throws Exception {
      ServerSocket serverSocket = null;
      try {
         serverSocket = new ServerSocket(3810);
         System.out.println("준비 완료");
         Socket clientSocket = null;
         while (true) {
            try {
               clientSocket = serverSocket.accept();
               System.out.print("신규접속" + clientSocket.getLocalAddress());
               Calendar c = Calendar.getInstance();
               System.out.println(" 접속시간:" + c.getTime());
               new Thread(new ClientClone(clientSocket)).start();
            } catch (IOException e) {
               System.err.println("accept() 실패");
               System.exit(1);
            }
         }

        
      } catch (IOException e) {
         System.err.println("다음의 포트 번호에 연결할 수 없습니다: 3810");
         serverSocket.close();
         System.exit(1);
      }
   }
}

// 소켓을 받아 입력되어온 데이터 처리
class ClientClone implements Runnable {
   InputStream is;
   OutputStream os;
   // DataInputStream dis;
   Socket clientSocket;
   PrintWriter out;
   // 생성자
   public ClientClone(Socket s) throws Exception {
      this.clientSocket = s;
   }

   @Override
   public void run() {
      try {
         is = clientSocket.getInputStream();
         os = clientSocket.getOutputStream();
         //out = new PrintWriter(os, true);
         // dis = new DataInputStream(is);
      } catch (IOException e1) {
         // TODO Auto-generated catch block
         e1.printStackTrace();
         try {
            clientSocket.close();
         } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }
      }

      String receivedData = "";
      byte[] arg0 = new byte[50];
      for(int i=0; i<10; i++) {
         arg0[i] = 97;
      }
      
      int count = 0;
      try {
    	  
         is.read(arg0);
         
         //os.write(arg0);
         
         System.out.print(count + ": " + arg0.length + ":");
         // System.out.println();
         receivedData = decodeUTF8(arg0);
//         if(receivedData.equals("지문의 ID #1")) {
//        	 System.out.println("ㅎ");
//         }
         System.out.print("receivedData :"+receivedData + "   \n");
         is.close();
         os.close();
         System.out.println("종료");
         
         dbSave(receivedData);
        
      } catch (IOException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
         return;
      }

   }

   public void dbSave(String receivedData) {
      int start, end, type;
      String fingerID, typeID;
      if(receivedData.indexOf("#")==-1) {
    	  
      }else {
      start = receivedData.indexOf("#");
      
      end = receivedData.lastIndexOf("#");
      
      type = receivedData.indexOf("!");
      fingerID = receivedData.substring(start + 1, end);
      typeID = receivedData.substring(end + 1, type);
      System.out.println("\n정보:" + start + ":" + end);
      System.out.println(" 지문 번호:" + fingerID);
      System.out.println(" 근태타입:" + typeID);
      int finger_id = Integer.parseInt(fingerID);
      int type_id = Integer.parseInt(typeID);
      sendData(finger_id, type_id);
      }
      return;
   }

   public void sendData(int fingerID, int typeID) {
      Connection conn = null;
      ResultSet rs = null;
      try {
         Class.forName("net.sf.log4jdbc.sql.jdbcapi.DriverSpy");
         String url = "jdbc:log4jdbc:oracle:thin:@39.127.7.85:1521/AteamDB";
         String id = "proalba";
         String password = "pro123";
         String query = "";
         String query1 = "";
         conn = DriverManager.getConnection(url, id, password);
          System.out.println("데이터베이스와 연결 성공");
         if(typeID==2) {
        	 
        	 
        	 query = "SELECT * FROM employee e, salary s " +
        			 "WHERE (SELECT em_code from employee WHERE finger_id = "+fingerID+") = s.em_code " +
        			 "AND (SELECT SUBSTR(sa_code, INSTR(sa_code,'/', 1)+1, 6) FROM salary ) = to_char(sysdate, 'YYYYMM') " +
        			 "AND e.em_code = s.em_code";
             Statement stmt1 = conn.createStatement();
             rs = stmt1.executeQuery(query);
             System.out.println(rs);
             System.out.println("쿼리문 들어옴");
             if(rs.next()) {
            	 query = " INSERT INTO work_record(w_code, sa_code, work_start_time)" + 
            			 " SELECT  SUBSTR(s.sa_code,1,INSTR(s.sa_code,'/',1))||TO_CHAR(SYSDATE,'yyyymmdd hh24:mi') as w_code, s.sa_code, TO_CHAR(SYSDATE,'yy-mm-dd hh24:mi') as work_start_time " + 
            			 " from salary s, employee e " + 
            			 " where e.finger_id = "+ fingerID + 
            			 " and s.em_code = e.em_code " + 
            			 " and SUBSTR(sa_code,INSTR(sa_code,'/',1)+1,6) = to_char(sysdate, 'yyyymm') ";
            	 System.out.print(" 출근 : ");
             }else {
            	 
            	 query1 = "INSERT INTO salary (sa_code,em_code)  select SUBSTR(e.m_code,2,INSTR(e.em_code,'/',1)-2)||'/'||to_char(sysdate,'yyyymm')||'/'||SUBSTR(em_code,2,INSTR(em_code,'/',1)-2) as sa_code, e.em_code " + 
            	 		"        from member m, employee e" + 
            	 		"        where " + 
            	 		"        m.m_code = SUBSTR(em_code,1,INSTR(em_code,'/',1)-1) and " + 
            	 		"        e.finger_id = "+fingerID;
            	 stmt1 = conn.createStatement();
                 rs = stmt1.executeQuery(query1);
                 query = " INSERT INTO work_record(w_code, sa_code, work_start_time)" + 
            			 " SELECT  SUBSTR(s.sa_code,1,INSTR(s.sa_code,'/',1))||TO_CHAR(SYSDATE,'yyyymmdd hh24:mi') as w_code, s.sa_code, TO_CHAR(SYSDATE,'hh24:mi') as work_start_time " + 
            			 " from salary s, employee e " + 
            			 " where e.finger_id = "+ fingerID + 
            			 " and s.em_code = e.em_code " + 
            			 " and SUBSTR(sa_code,INSTR(sa_code,'/',1)+1,6) = to_char(sysdate, 'yyyymm') ";
                 stmt1 = conn.createStatement();
                 rs = stmt1.executeQuery(query);
             }
         }else if(typeID==3) {
         query = "UPDATE work_record w SET w.work_end_time = TO_CHAR(SYSDATE,'hh24:mi')" + 
         		"    where  " + 
         		"    rownum=1 and    " + 
         		"    w.work_start_time = ( select max(work_start_time)" + 
         		"    from work_record " + 
         		"    where work_end_time IS NULL" + 
         		"    ) and 'p'||SUBSTR(w_code,1,INSTR(w_code,'/',1)-1) = (select m_code from employee where finger_id="+fingerID+")";
         Statement stmt1 = conn.createStatement();
         stmt1.executeUpdate(query);
         
         query = "SELECT w.work_end_time work_end_time, w.work_start_time work_start_time" +
                 "FROM work_record w" +
                 "where rownum=1" +
                 "and 'p'||SUBSTR(w.w_code,1,INSTR(w.w_code,'/',1)-1) =(select m_code from employee where finger_id="+fingerID+")";
         rs = stmt1.executeQuery(query);
         
         String work_start_time = rs.getString("work_start_time");
         String work_end_time = rs.getString("work_end_time");
         
 		int start_hour = Integer.parseInt(work_start_time.substring(0, 2));
 		int end_hour = Integer.parseInt(work_end_time.substring(0, 2));
 		
 		if (start_hour > end_hour) { end_hour = end_hour + 24; }
 		int working_hours1 = (end_hour - start_hour) * 60;

 		int working_hours2 = Integer.parseInt(work_end_time.substring(3, 5)) - Integer.parseInt(work_start_time.substring(3, 5));
 		
 		int working_hours = working_hours1 + working_hours2;
         
         query ="UPDATE work_record w SET w.working_hours = "+working_hours+""+
        		"where rownum=1"+
        		"and w.working_hours IS NULL"+
        		"and 'p'||SUBSTR(w.w_code,1,INSTR(w.w_code,'/',1)-1) =(select m_code from employee where finger_id="+fingerID+")";
         System.out.print(" 퇴근 : ");
         }
//        //query = "INSERT INTO ATT_SIGN(FINGER_ID, SIGN_DATE)  VALUES (" + fingerID + ", sysdate )";
         Statement stmt = conn.createStatement();
         stmt.executeUpdate(query);
         
         // FINGER_ID NUMBER,
         // SIGN_DATE DATE NOT NULL,
         query = "     select e.m_code, e.finger_id, w.work_start_time, w.work_end_time" + 
         		"        from employee e, work_record w, salary s" + 
         		"        where e.finger_id = "+fingerID+ " and" + 
         		"         s.em_code = e.em_code and" + 
         		"         s.sa_code = w.sa_code and" + 
         		"        SUBSTR(w.w_code,INSTR(s.sa_code,'/',1)+1,INSTR(s.sa_code,'/',2)) = to_char(sysdate, 'yyyymmdd')";
         
//         query = "select NAME from ATT_Student where Student_ID = (select Student_ID from ATT_FINGER where FINGER_ID = "
//               + fingerID + ")";
         rs = stmt.executeQuery(query);
         if (rs != null) {
            if (rs.next()) {
               String name = rs.getString(1);
               Calendar c = Calendar.getInstance();
               System.out.println(name + "::" + c.getTime());
               // System.out.println(name + ":999:" + c.DAY_OF_MONTH + "일" + c.HOUR +"시" +
               // c.MINUTE + "분");
            }
            rs.close();
         }
         stmt.close();
      } catch (SQLException e1) {
         e1.printStackTrace();
      } catch (Exception e2) {
         e2.printStackTrace();
      } finally {
         try {
            if (conn != null) {
               conn.close();
            }
         } catch (Exception ex) {
         }
         ;
      } // end of try
   }// end of main

   // 문자열 변환 메소드
   private final Charset UTF8_CHARSET = Charset.forName("UTF-8");

   String decodeUTF8(byte[] bytes) {
      return new String(bytes, UTF8_CHARSET);
   }

   byte[] encodeUTF8(String string) {
      return string.getBytes(UTF8_CHARSET);
   }
}

public class Wdb {

   public static void main(String[] args) throws Exception {
      while (true) {
         Server server = new Server();
         try {
            server.serverStart();
            //ClientClone.dbSave();
         } catch (IOException e) {
            e.printStackTrace();
            System.out.println("첫번째 crash");

         }
      }

   }

}