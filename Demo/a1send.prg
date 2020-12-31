*-- WebApi 控制器类
*-- 规范:文件名跟类名是一样的.如类名:1Send,文件名1Send.prg
*-- 调用格式 http://ip:端口号/类名.fsp?proc=类过程名
*-- 打开浏览器 建议用360极速,谷歌浏览器 输入http://本机ip:1007/a1Send.fsp?proc=send 即可测试

Define Class a1send As Session
	*--向Webapi调用方发送字符串
	Procedure Send
	Return "Hello world"
	Endproc
	*-- 向WebAPI调用方发送JSON
	Procedure SendJson
	oJson=Createobject("foxjson")
	oJson.Append("name","张三")
	oJson.Append("age",21)
	oJson.Append("sex",.T.)
	Return oJson.tostring()
	Endproc
	*-- 发送表JSON
	Procedure sendcursor
	If !Used("教师")
		Use 教师 In 0
	Endif
	Return cursortojson("教师")
	ENDPROC
	
	*--VFP专用数据格式 数据表存放在data字段,在客户端可以使用strToCursor 来恢复表状态
	PROCEDURE SendCursorBase64
	If !Used("database\教师")
		Use 教师 In 0
	ENDIF
	*?LEN(cursortostring("教师"))
	Return cursortoBASE64("教师")
	ENDPROC 
	
	
Enddefine
