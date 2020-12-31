*-- WebApi 控制器类
*-- 规范:文件名跟类名是一样的.如类名:1Send,文件名1Send.prg
*-- 调用格式 http://ip:端口号/类名.fsp?proc=类过程名
*-- http传参 get方式传参 在url中进行拼接
*-- 用&键=值对来传值,可多个拼接  http://ip:端口号/类名.fsp?proc=类过程名&参数1=参数值

Define Class a2get As Session
	*--传参 key1=test	
	Procedure get
	cResult=httpqueryparams("key1",this.iconnid)
	RETURN "您传的参数是:"+STRCONV(cResult,11)
	Endproc
Enddefine
