*-- WebApi ��������
*-- �淶:�ļ�����������һ����.������:1Send,�ļ���1Send.prg
*-- ���ø�ʽ http://ip:�˿ں�/����.fsp?proc=�������
*-- http���� get��ʽ���� ��url�н���ƴ��
*-- ��&��=ֵ������ֵ,�ɶ��ƴ��  http://ip:�˿ں�/����.fsp?proc=�������&����1=����ֵ

Define Class a2get As Session
	*--���� key1=test	
	Procedure get
	cResult=httpqueryparams("key1",this.iconnid)
	RETURN "�����Ĳ�����:"+STRCONV(cResult,11)
	Endproc
Enddefine
