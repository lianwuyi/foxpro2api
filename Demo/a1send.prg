*-- WebApi ��������
*-- �淶:�ļ�����������һ����.������:1Send,�ļ���1Send.prg
*-- ���ø�ʽ http://ip:�˿ں�/����.fsp?proc=�������
*-- ������� ������360����,�ȸ������ ����http://����ip:1007/a1Send.fsp?proc=send ���ɲ���

Define Class a1send As Session
	*--��Webapi���÷������ַ���
	Procedure Send
	Return "Hello world"
	Endproc
	*-- ��WebAPI���÷�����JSON
	Procedure SendJson
	oJson=Createobject("foxjson")
	oJson.Append("name","����")
	oJson.Append("age",21)
	oJson.Append("sex",.T.)
	Return oJson.tostring()
	Endproc
	*-- ���ͱ�JSON
	Procedure sendcursor
	If !Used("��ʦ")
		Use ��ʦ In 0
	Endif
	Return cursortojson("��ʦ")
	ENDPROC
	
	*--VFPר�����ݸ�ʽ ���ݱ�����data�ֶ�,�ڿͻ��˿���ʹ��strToCursor ���ָ���״̬
	PROCEDURE SendCursorBase64
	If !Used("database\��ʦ")
		Use ��ʦ In 0
	ENDIF
	*?LEN(cursortostring("��ʦ"))
	Return cursortoBASE64("��ʦ")
	ENDPROC 
	
	
Enddefine
