*-- WebApi ��������
*-- �淶:�ļ�����������һ����.������:1Send,�ļ���1Send.prg
*-- ���ø�ʽ http://ip:�˿ں�/����.fsp?proc=�������
*-- http���� Post��ʽ��ֱ���ύ��������URL�г��֡�


Define Class a3post As Session
    *--���ܷ�������POST�������� ������ȥ POSTMAN��UTF8���뷢�������ط�Ҫ��strconv(str,11)
	Procedure Post
	LOCAL cPostData
	cPostData=HttpGetPostData(this.iconnid)
	oFrmMain.log(cPostData)
	_cliptext=cPostData
	?cPostData
	oFrmMain.log("����")
	RETURN cPostData  
	Endproc
   
    *--������ֵ�Ը�ʽ name=����&age=21
    Procedure PostParams
    LOCAL cname,cage
    cname=httpqueryparams("����",this.iconnid)
    cage=httpqueryparams("age",this.iconnid)
    RETURN "����:"+cname+"����:"+cage  &&Ҫ����ת��
	Endproc

    *--������ ������BASE64����   
    Procedure PostCursor
    LOCAL cPostData,cResult
    cPostData=HttpGetPostData(this.iconnid)
    ofrmMain.log(TRANSFORM(len(cPostData)))
    IF strtocursor(STRCONV(cPostData,14))
     cResult="������ɹ�"
    ELSE 
     ERROR "������ʧ��"
    ENDIF 
    RETURN  cResult &&Ҫ����ת��
	Endproc

    *--�ļ��ϴ����� 
    Procedure Upload
    LOCAL cPostData
    cPostData=HttpGetPostData(this.iconnid)
    RETURN STRCONV(cPostData,11)  &&Ҫ����ת��
	Endproc
Enddefine
