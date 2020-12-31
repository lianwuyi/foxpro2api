DEFINE CLASS test as Session 
   PROCEDURE send
      RETURN "您好,世界"
   ENDPROC 
   
  PROCEDURE sendjson
     oJson=CREATEOBJECT("foxjson")
     oJson.append("name","张三")
     oJson.append("age","20")
     RETURN oJson.toString()
  ENDPROC 
  
  PROCEDURE senderror
    &&a1=b1
    ERROR "我是自定义错误"
  ENDPROC 
  
  PROCEDURE getRyxx
  oDBSQLhelper=NEWOBJECT("MSSQLhelper","MSSQLHelper.prg")
  oDBSQLhelper.SQLQuery("select * from ryxx","ryxx")
  RETURN cursortojson("ryxx")
    
  ENDPROC 
  
   
ENDDEFINE 