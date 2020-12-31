*-- WebApi 控制器类
*-- 规范:文件名跟类名是一样的.如类名:1Send,文件名1Send.prg
*-- 调用格式 http://ip:端口号/类名.fsp?proc=类过程名
*-- http传参 Post方式是直接提交，不会在URL中出现。


Define Class a3post As Session
    *--接受发过来的POST所有数据 并返回去 POSTMAN是UTF8编码发过来，回发要加strconv(str,11)
	Procedure Post
	LOCAL cPostData
	cPostData=HttpGetPostData(this.iconnid)
	oFrmMain.log(cPostData)
	_cliptext=cPostData
	?cPostData
	oFrmMain.log("内容")
	RETURN cPostData  
	Endproc
   
    *--解析键值对格式 name=张三&age=21
    Procedure PostParams
    LOCAL cname,cage
    cname=httpqueryparams("姓名",this.iconnid)
    cage=httpqueryparams("age",this.iconnid)
    RETURN "姓名:"+cname+"年龄:"+cage  &&要进行转码
	Endproc

    *--解析表 采用了BASE64编码   
    Procedure PostCursor
    LOCAL cPostData,cResult
    cPostData=HttpGetPostData(this.iconnid)
    ofrmMain.log(TRANSFORM(len(cPostData)))
    IF strtocursor(STRCONV(cPostData,14))
     cResult="解析表成功"
    ELSE 
     ERROR "解析表失败"
    ENDIF 
    RETURN  cResult &&要进行转码
	Endproc

    *--文件上传待补 
    Procedure Upload
    LOCAL cPostData
    cPostData=HttpGetPostData(this.iconnid)
    RETURN STRCONV(cPostData,11)  &&要进行转码
	Endproc
Enddefine
