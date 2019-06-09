@Rem https://jingyan.baidu.com/article/f79b7cb37ad82d9145023e61.html
@Rem 将当前目录下的所有.war文件变成  .rar文件
@Rem WinRAR a -r -ep1 -df 压缩包保存路径 被压缩的文件（夹）路径
@Rem for /r %%c in (*.jpg) do (ren %%c *.JPG)  :: 修改当前目录下的所有文件的后缀名，包括子目录的
@Rem --修改当前目录下的所有文件的后缀名，
@Rem 表示在此语句后所有运行的命令都不显示命令行本身　
@echo off
@echo 现在的能配置的包是:
@echo cas,editorWebService,formengineWebService,mainWeb,pubWeb,workflowWebService,
@echo webgisWebService,fulltext,comprehensiveMonitorWebService这九个包(若需添加其他包,请在群进行@)
echo.
@Rem 备份配置文件
@set isBackup=n
set /p isBackup=请输入是否备份当前文件夹下的配置文件(直接回车不备份配置文件，输入(y)备份配置文件):
if %isBackup%==y (



goto Backup

) else (

   goto   not_Backup
)

:Backup
@Rem 判断是否已经有备份配置文件了
@set isok=0

@Rem 1
if exist cas (
@set isok=1
md ..\配置文件\cas
copy cas\WEB-INF\classes\log4j2.xml ..\配置文件\cas
copy cas\WEB-INF\cas.properties ..\配置文件\cas
copy cas\WEB-INF\deployerConfigContext.xml ..\配置文件\cas
)

@Rem 2
if exist editorWebService (
@set isok=1
md ..\配置文件\editorWebService
copy editorWebService\WEB-INF\classes\config.properties ..\配置文件\editorWebService
copy editorWebService\WEB-INF\classes\log4j.properties ..\配置文件\editorWebService
copy editorWebService\WEB-INF\classes\logback.xml ..\配置文件\editorWebService
copy editorWebService\WEB-INF\web.xml ..\配置文件\editorWebService
)

@Rem 3
if exist formengineWebService (
@set isok=1
md ..\配置文件\formengineWebService
copy formengineWebService\WEB-INF\classes\config.properties ..\配置文件\formengineWebService
copy formengineWebService\WEB-INF\classes\log4j.properties ..\配置文件\formengineWebService
copy formengineWebService\WEB-INF\classes\logback.xml ..\配置文件\formengineWebService
copy formengineWebService\WEB-INF\web.xml ..\配置文件\formengineWebService
)

@Rem 4
if exist mainWeb (
@set isok=1
md ..\配置文件\mainWeb
copy mainWeb\WEB-INF\classes\config.properties ..\配置文件\mainWeb
copy mainWeb\WEB-INF\classes\log4j.properties ..\配置文件\mainWeb
copy mainWeb\WEB-INF\classes\logback.xml ..\配置文件\mainWeb
copy mainWeb\WEB-INF\web.xml ..\配置文件\mainWeb
)

@Rem 5
if exist pubWeb (
@set isok=1
md ..\配置文件\pubWeb
copy pubWeb\WEB-INF\classes\config.properties ..\配置文件\pubWeb
copy pubWeb\WEB-INF\classes\log4j.properties ..\配置文件\pubWeb
copy pubWeb\WEB-INF\classes\logback.xml ..\配置文件\pubWeb
copy pubWeb\WEB-INF\web.xml ..\配置文件\pubWeb
)

@Rem 6
if exist workflowWebService (
@set isok=1
md ..\配置文件\workflowWebService
copy workflowWebService\WEB-INF\classes\config.properties ..\配置文件\workflowWebService
copy workflowWebService\WEB-INF\classes\log4j.properties ..\配置文件\workflowWebService
copy workflowWebService\WEB-INF\classes\logback.xml ..\配置文件\workflowWebService
copy workflowWebService\WEB-INF\web.xml ..\配置文件\workflowWebService
)

@Rem 7
if exist webgisWebService (
@set isok=1
md ..\配置文件\webgisWebService
copy webgisWebService\WEB-INF\classes\config.properties ..\配置文件\webgisWebService
copy webgisWebService\WEB-INF\classes\log4j.properties ..\配置文件\webgisWebService
copy webgisWebService\WEB-INF\classes\logback.xml ..\配置文件\webgisWebService
copy webgisWebService\WEB-INF\web.xml ..\配置文件\webgisWebService
)

@Rem 8
if exist fulltext (
@set isok=1
md ..\配置文件\fulltext
copy fulltext\WEB-INF\classes\config.properties ..\配置文件\fulltext
copy fulltext\WEB-INF\classes\log4j.properties ..\配置文件\fulltext
copy fulltext\WEB-INF\classes\logback.xml ..\配置文件\fulltext
copy fulltext\WEB-INF\web.xml ..\配置文件\fulltext
)

@Rem 9
if exist comprehensiveMonitorWebService (
@set isok=1
md ..\配置文件\comprehensiveMonitorWebService
copy comprehensiveMonitorWebService\WEB-INF\classes\config.properties ..\配置文件\comprehensiveMonitorWebService
copy comprehensiveMonitorWebService\WEB-INF\classes\log4j.properties ..\配置文件\comprehensiveMonitorWebService
@Rem copy comprehensiveMonitorWebService\WEB-INF\classes\logback.xml ..\配置文件\comprehensiveMonitorWebService
copy comprehensiveMonitorWebService\WEB-INF\web.xml ..\配置文件\comprehensiveMonitorWebService
)

@if %isok%==0 (
@echo  备份失败,当前目录没有目标文件夹
) else (
@echo  备份成功,请按回车继续
)


:not_Backup

@ set isDelFiles=n
set /p isDelFiles=请输入是否删除文件夹(直接回车不删除，输入y删除当前文件夹下的程序文件夹):
if %isDelFiles%==y (
goto DelFiles
) else (
goto not_DelFiles
)

:DelFiles
@Rem 1
if   exist cas rd /S /Q  cas
@Rem 2
if   exist editorWebService rd /S /Q  editorWebService
@Rem 3
if   exist formengineWebService rd /S /Q  formengineWebService
@Rem 4
if   exist mainWeb rd /S /Q  mainWeb
@Rem 5
if   exist pubWeb rd /S /Q pubWeb
@Rem 6
if   exist workflowWebService rd /S /Q  workflowWebService
@Rem 7
if   exist webgisWebService rd /S /Q  webgisWebService
@Rem 8
if   exist fulltext rd /S /Q fulltext
@Rem 9
if   exist comprehensiveMonitorWebService  rd /S /Q  comprehensiveMonitorWebService
@echo 删除文件夹，成功
:not_DelFiles


@Rem WinRAR a -r -ep1 "C:\Users\10534\Desktop\test1.rar" "C:\Users\10534\Desktop\test"     --压缩文件
@Rem http://blog.sina.com.cn/s/blog_63c34a240102xosh.html
@Rem WinRAR x 压缩包路径 解压缩到目标文件夹的路径
@set isDecompress=n
set /p isDecompress=请输入是否解压(war或者rar包)(直接回车不解压，输入y解压当前文件夹下的压缩包):
if %isDecompress%==y (
goto Decompress
) else (
goto not_Decompress
)
@Rem 将所有的war结尾文件变成rar结尾文件
:Decompress

if   exist *.war (
	ren *.war *.rar
)
@Rem 1
if   exist cas.rar WinRAR X  "cas.rar" -ad
@Rem 2
if   exist editorWebService.rar WinRAR X  "editorWebService.rar" -ad
@Rem 3
if   exist formengineWebService.rar WinRAR X  "formengineWebService.rar" -ad
@Rem 4
if   exist mainWeb.rar WinRAR X  "mainWeb.rar" -ad
@Rem 5
if   exist pubWeb.rar WinRAR X  "pubWeb.rar" -ad
@Rem 6
if   exist workflowWebService.rar WinRAR X  "workflowWebService.rar" -ad
@Rem 7
if   exist webgisWebService.rar WinRAR X  "webgisWebService.rar" -ad
@Rem 8
if   exist fulltext.rar WinRAR X  "fulltext.rar" -ad
@Rem 9
if   exist comprehensiveMonitorWebService.rar  WinRAR X  "comprehensiveMonitorWebService.rar" -ad

@echo 解压文件成功

:not_Decompress


@Rem 替换配置文件
@set isReplace=n
set /p isReplace=请输入是否替换配置文件(直接回车不替换配置文件，输入y替换配置文件):
if %isReplace%==y (
goto Replace
) else (
   goto   not_Replace
)

:Replace
if exist ..\配置文件 (

@Rem 1
if exist cas (
copy ..\配置文件\cas\log4j2.xml cas\WEB-INF\classes
copy ..\配置文件\cas\cas.properties cas\WEB-INF
copy ..\配置文件\cas\deployerConfigContext.xml cas\WEB-INF
)

@Rem 2
if exist editorWebService (
copy ..\配置文件\editorWebService\config.properties editorWebService\WEB-INF\classes
copy ..\配置文件\editorWebService\log4j.properties editorWebService\WEB-INF\classes
copy ..\配置文件\editorWebService\logback.xml editorWebService\WEB-INF\classes
copy ..\配置文件\editorWebService\web.xml editorWebService\WEB-INF
)

@Rem 3
if exist formengineWebService (
copy ..\配置文件\formengineWebService\config.properties  formengineWebService\WEB-INF\classes
copy ..\配置文件\formengineWebService\log4j.properties formengineWebService\WEB-INF\classes
copy ..\配置文件\formengineWebService\logback.xml formengineWebService\WEB-INF\classes
copy ..\配置文件\formengineWebService\web.xml formengineWebService\WEB-INF
)

@Rem 4
if exist mainWeb (
copy ..\配置文件\mainWeb\config.properties  mainWeb\WEB-INF\classes
copy ..\配置文件\mainWeb\log4j.properties mainWeb\WEB-INF\classes
copy ..\配置文件\mainWeb\logback.xml mainWeb\WEB-INF\classes
copy ..\配置文件\mainWeb\web.xml   mainWeb\WEB-INF
)

@Rem 5
if exist pubWeb (
copy ..\配置文件\pubWeb\config.properties  pubWeb\WEB-INF\classes
copy ..\配置文件\pubWeb\log4j.properties pubWeb\WEB-INF\classes
copy ..\配置文件\pubWeb\logback.xml pubWeb\WEB-INF\classes
copy ..\配置文件\pubWeb\web.xml pubWeb\WEB-INF
)

@Rem 6
if exist workflowWebService (
copy ..\配置文件\workflowWebService\config.properties  workflowWebService\WEB-INF\classes
copy ..\配置文件\workflowWebService\log4j.properties workflowWebService\WEB-INF\classes
copy ..\配置文件\workflowWebService\logback.xml workflowWebService\WEB-INF\classes
copy ..\配置文件\workflowWebService\web.xml workflowWebService\WEB-INF
)

@Rem 7
if exist webgisWebService (
copy ..\配置文件\webgisWebService\config.properties  webgisWebService\WEB-INF\classes
copy ..\配置文件\webgisWebService\log4j.properties webgisWebService\WEB-INF\classes
copy ..\配置文件\webgisWebService\logback.xml webgisWebService\WEB-INF\classes
copy ..\配置文件\webgisWebService\web.xml webgisWebService\WEB-INF
)

@Rem 8
if exist fulltext (
copy ..\配置文件\fulltext\config.properties  fulltext\WEB-INF\classes
copy ..\配置文件\fulltext\log4j.properties fulltext\WEB-INF\classes
copy ..\配置文件\fulltext\logback.xml fulltext\WEB-INF\classes
copy ..\配置文件\fulltext\web.xml fulltext\WEB-INF
)

@Rem 9
if exist comprehensiveMonitorWebService (
copy ..\配置文件\comprehensiveMonitorWebService\config.properties  comprehensiveMonitorWebService\WEB-INF\classes
copy ..\配置文件\comprehensiveMonitorWebService\log4j.properties comprehensiveMonitorWebService\WEB-INF\classes
@Rem 9 copy ..\配置文件\comprehensiveMonitorWebService\logback.xml comprehensiveMonitorWebService\WEB-INF\classes
copy ..\配置文件\comprehensiveMonitorWebService\web.xml comprehensiveMonitorWebService\WEB-INF
)
@echo 替换配置文件成功
) else (
@echo 替换配置文件不成功，请先准备好配置文件
)
:not_Replace



@Rem 删除压缩包
@set isDelete_compress=false
set /p isDelete_compress=请输入是否删除压缩包(直接回车不删除压缩包，输入(true)删除压缩文件):
if %isDelete_compress%==true (
goto Delete_compress
) else (
goto  not_Delete_compress
)
:Delete_compress
@Rem 1
if   exist cas.rar del cas.rar
if   exist cas.war del cas.war
@Rem 2
if   exist editorWebService.rar del editorWebService.rar
if   exist editorWebService.war del editorWebService.war
@Rem 3
if   exist formengineWebService.rar del formengineWebService.rar
if   exist formengineWebService.war del formengineWebService.war
@Rem 4
if   exist mainWeb.rar del mainWeb.rar
if   exist mainWeb.war del mainWeb.war
@Rem 5
if   exist pubWeb.rar del pubWeb.rar
if   exist pubWeb.war del pubWeb.war
@Rem 6
if   exist workflowWebService.rar del workflowWebService.rar
if   exist workflowWebService.war del workflowWebService.war
@Rem 7
if   exist webgisWebService.rar del webgisWebService.rar
if   exist webgisWebService.war del webgisWebService.rar
@Rem 8
if   exist fulltext.rar del fulltext.rar
if   exist fulltext.war del fulltext.war
@Rem 9
if   exist comprehensiveMonitorWebService.rar  del comprehensiveMonitorWebService.rar
if   exist comprehensiveMonitorWebService.war  del comprehensiveMonitorWebService.war
@echo 删除压缩包成功
:not_Delete_compress

pause



