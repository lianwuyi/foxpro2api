DEFINE CLASS test as Session 
   PROCEDURE send
      RETURN "����,����"
   ENDPROC 
   
  PROCEDURE sendjson
     oJson=CREATEOBJECT("foxjson")
     oJson.append("name","����")
     oJson.append("age","20")
     RETURN oJson.toString()
  ENDPROC 
  
  PROCEDURE senderror
    &&a1=b1
    ERROR "�����Զ������"
  ENDPROC 
  
  PROCEDURE getRyxx
  oDBSQLhelper=NEWOBJECT("MSSQLhelper","MSSQLHelper.prg")
  oDBSQLhelper.SQLQuery("select * from ryxx","ryxx")
  RETURN cursortojson("ryxx")
    
  ENDPROC 
  
   
ENDDEFINE 