@Rem https://jingyan.baidu.com/article/f79b7cb37ad82d9145023e61.html
@Rem ����ǰĿ¼�µ�����.war�ļ����  .rar�ļ�
@Rem WinRAR a -r -ep1 -df ѹ��������·�� ��ѹ�����ļ����У�·��
@Rem for /r %%c in (*.jpg) do (ren %%c *.JPG)  :: �޸ĵ�ǰĿ¼�µ������ļ��ĺ�׺����������Ŀ¼��
@Rem --�޸ĵ�ǰĿ¼�µ������ļ��ĺ�׺����
@Rem ��ʾ�ڴ������������е��������ʾ�����б���
@echo off
@echo ���ڵ������õİ���:
@echo cas,editorWebService,formengineWebService,mainWeb,pubWeb,workflowWebService,
@echo webgisWebService,fulltext,comprehensiveMonitorWebService��Ÿ���(�������������,����Ⱥ����@)
echo.
@Rem ���������ļ�
@set isBackup=n
set /p isBackup=�������Ƿ񱸷ݵ�ǰ�ļ����µ������ļ�(ֱ�ӻس������������ļ�������(y)���������ļ�):
if %isBackup%==y (



goto Backup

) else (

   goto   not_Backup
)

:Backup
@Rem �ж��Ƿ��Ѿ��б��������ļ���
@set isok=0

@Rem 1
if exist cas (
@set isok=1
md ..\�����ļ�\cas
copy cas\WEB-INF\classes\log4j2.xml ..\�����ļ�\cas
copy cas\WEB-INF\cas.properties ..\�����ļ�\cas
copy cas\WEB-INF\deployerConfigContext.xml ..\�����ļ�\cas
)

@Rem 2
if exist editorWebService (
@set isok=1
md ..\�����ļ�\editorWebService
copy editorWebService\WEB-INF\classes\config.properties ..\�����ļ�\editorWebService
copy editorWebService\WEB-INF\classes\log4j.properties ..\�����ļ�\editorWebService
copy editorWebService\WEB-INF\classes\logback.xml ..\�����ļ�\editorWebService
copy editorWebService\WEB-INF\web.xml ..\�����ļ�\editorWebService
)

@Rem 3
if exist formengineWebService (
@set isok=1
md ..\�����ļ�\formengineWebService
copy formengineWebService\WEB-INF\classes\config.properties ..\�����ļ�\formengineWebService
copy formengineWebService\WEB-INF\classes\log4j.properties ..\�����ļ�\formengineWebService
copy formengineWebService\WEB-INF\classes\logback.xml ..\�����ļ�\formengineWebService
copy formengineWebService\WEB-INF\web.xml ..\�����ļ�\formengineWebService
)

@Rem 4
if exist mainWeb (
@set isok=1
md ..\�����ļ�\mainWeb
copy mainWeb\WEB-INF\classes\config.properties ..\�����ļ�\mainWeb
copy mainWeb\WEB-INF\classes\log4j.properties ..\�����ļ�\mainWeb
copy mainWeb\WEB-INF\classes\logback.xml ..\�����ļ�\mainWeb
copy mainWeb\WEB-INF\web.xml ..\�����ļ�\mainWeb
)

@Rem 5
if exist pubWeb (
@set isok=1
md ..\�����ļ�\pubWeb
copy pubWeb\WEB-INF\classes\config.properties ..\�����ļ�\pubWeb
copy pubWeb\WEB-INF\classes\log4j.properties ..\�����ļ�\pubWeb
copy pubWeb\WEB-INF\classes\logback.xml ..\�����ļ�\pubWeb
copy pubWeb\WEB-INF\web.xml ..\�����ļ�\pubWeb
)

@Rem 6
if exist workflowWebService (
@set isok=1
md ..\�����ļ�\workflowWebService
copy workflowWebService\WEB-INF\classes\config.properties ..\�����ļ�\workflowWebService
copy workflowWebService\WEB-INF\classes\log4j.properties ..\�����ļ�\workflowWebService
copy workflowWebService\WEB-INF\classes\logback.xml ..\�����ļ�\workflowWebService
copy workflowWebService\WEB-INF\web.xml ..\�����ļ�\workflowWebService
)

@Rem 7
if exist webgisWebService (
@set isok=1
md ..\�����ļ�\webgisWebService
copy webgisWebService\WEB-INF\classes\config.properties ..\�����ļ�\webgisWebService
copy webgisWebService\WEB-INF\classes\log4j.properties ..\�����ļ�\webgisWebService
copy webgisWebService\WEB-INF\classes\logback.xml ..\�����ļ�\webgisWebService
copy webgisWebService\WEB-INF\web.xml ..\�����ļ�\webgisWebService
)

@Rem 8
if exist fulltext (
@set isok=1
md ..\�����ļ�\fulltext
copy fulltext\WEB-INF\classes\config.properties ..\�����ļ�\fulltext
copy fulltext\WEB-INF\classes\log4j.properties ..\�����ļ�\fulltext
copy fulltext\WEB-INF\classes\logback.xml ..\�����ļ�\fulltext
copy fulltext\WEB-INF\web.xml ..\�����ļ�\fulltext
)

@Rem 9
if exist comprehensiveMonitorWebService (
@set isok=1
md ..\�����ļ�\comprehensiveMonitorWebService
copy comprehensiveMonitorWebService\WEB-INF\classes\config.properties ..\�����ļ�\comprehensiveMonitorWebService
copy comprehensiveMonitorWebService\WEB-INF\classes\log4j.properties ..\�����ļ�\comprehensiveMonitorWebService
@Rem copy comprehensiveMonitorWebService\WEB-INF\classes\logback.xml ..\�����ļ�\comprehensiveMonitorWebService
copy comprehensiveMonitorWebService\WEB-INF\web.xml ..\�����ļ�\comprehensiveMonitorWebService
)

@if %isok%==0 (
@echo  ����ʧ��,��ǰĿ¼û��Ŀ���ļ���
) else (
@echo  ���ݳɹ�,�밴�س�����
)


:not_Backup

@ set isDelFiles=n
set /p isDelFiles=�������Ƿ�ɾ���ļ���(ֱ�ӻس���ɾ��������yɾ����ǰ�ļ����µĳ����ļ���):
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
@echo ɾ���ļ��У��ɹ�
:not_DelFiles


@Rem WinRAR a -r -ep1 "C:\Users\10534\Desktop\test1.rar" "C:\Users\10534\Desktop\test"     --ѹ���ļ�
@Rem http://blog.sina.com.cn/s/blog_63c34a240102xosh.html
@Rem WinRAR x ѹ����·�� ��ѹ����Ŀ���ļ��е�·��
@set isDecompress=n
set /p isDecompress=�������Ƿ��ѹ(war����rar��)(ֱ�ӻس�����ѹ������y��ѹ��ǰ�ļ����µ�ѹ����):
if %isDecompress%==y (
goto Decompress
) else (
goto not_Decompress
)
@Rem �����е�war��β�ļ����rar��β�ļ�
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

@echo ��ѹ�ļ��ɹ�

:not_Decompress


@Rem �滻�����ļ�
@set isReplace=n
set /p isReplace=�������Ƿ��滻�����ļ�(ֱ�ӻس����滻�����ļ�������y�滻�����ļ�):
if %isReplace%==y (
goto Replace
) else (
   goto   not_Replace
)

:Replace
if exist ..\�����ļ� (

@Rem 1
if exist cas (
copy ..\�����ļ�\cas\log4j2.xml cas\WEB-INF\classes
copy ..\�����ļ�\cas\cas.properties cas\WEB-INF
copy ..\�����ļ�\cas\deployerConfigContext.xml cas\WEB-INF
)

@Rem 2
if exist editorWebService (
copy ..\�����ļ�\editorWebService\config.properties editorWebService\WEB-INF\classes
copy ..\�����ļ�\editorWebService\log4j.properties editorWebService\WEB-INF\classes
copy ..\�����ļ�\editorWebService\logback.xml editorWebService\WEB-INF\classes
copy ..\�����ļ�\editorWebService\web.xml editorWebService\WEB-INF
)

@Rem 3
if exist formengineWebService (
copy ..\�����ļ�\formengineWebService\config.properties  formengineWebService\WEB-INF\classes
copy ..\�����ļ�\formengineWebService\log4j.properties formengineWebService\WEB-INF\classes
copy ..\�����ļ�\formengineWebService\logback.xml formengineWebService\WEB-INF\classes
copy ..\�����ļ�\formengineWebService\web.xml formengineWebService\WEB-INF
)

@Rem 4
if exist mainWeb (
copy ..\�����ļ�\mainWeb\config.properties  mainWeb\WEB-INF\classes
copy ..\�����ļ�\mainWeb\log4j.properties mainWeb\WEB-INF\classes
copy ..\�����ļ�\mainWeb\logback.xml mainWeb\WEB-INF\classes
copy ..\�����ļ�\mainWeb\web.xml   mainWeb\WEB-INF
)

@Rem 5
if exist pubWeb (
copy ..\�����ļ�\pubWeb\config.properties  pubWeb\WEB-INF\classes
copy ..\�����ļ�\pubWeb\log4j.properties pubWeb\WEB-INF\classes
copy ..\�����ļ�\pubWeb\logback.xml pubWeb\WEB-INF\classes
copy ..\�����ļ�\pubWeb\web.xml pubWeb\WEB-INF
)

@Rem 6
if exist workflowWebService (
copy ..\�����ļ�\workflowWebService\config.properties  workflowWebService\WEB-INF\classes
copy ..\�����ļ�\workflowWebService\log4j.properties workflowWebService\WEB-INF\classes
copy ..\�����ļ�\workflowWebService\logback.xml workflowWebService\WEB-INF\classes
copy ..\�����ļ�\workflowWebService\web.xml workflowWebService\WEB-INF
)

@Rem 7
if exist webgisWebService (
copy ..\�����ļ�\webgisWebService\config.properties  webgisWebService\WEB-INF\classes
copy ..\�����ļ�\webgisWebService\log4j.properties webgisWebService\WEB-INF\classes
copy ..\�����ļ�\webgisWebService\logback.xml webgisWebService\WEB-INF\classes
copy ..\�����ļ�\webgisWebService\web.xml webgisWebService\WEB-INF
)

@Rem 8
if exist fulltext (
copy ..\�����ļ�\fulltext\config.properties  fulltext\WEB-INF\classes
copy ..\�����ļ�\fulltext\log4j.properties fulltext\WEB-INF\classes
copy ..\�����ļ�\fulltext\logback.xml fulltext\WEB-INF\classes
copy ..\�����ļ�\fulltext\web.xml fulltext\WEB-INF
)

@Rem 9
if exist comprehensiveMonitorWebService (
copy ..\�����ļ�\comprehensiveMonitorWebService\config.properties  comprehensiveMonitorWebService\WEB-INF\classes
copy ..\�����ļ�\comprehensiveMonitorWebService\log4j.properties comprehensiveMonitorWebService\WEB-INF\classes
@Rem 9 copy ..\�����ļ�\comprehensiveMonitorWebService\logback.xml comprehensiveMonitorWebService\WEB-INF\classes
copy ..\�����ļ�\comprehensiveMonitorWebService\web.xml comprehensiveMonitorWebService\WEB-INF
)
@echo �滻�����ļ��ɹ�
) else (
@echo �滻�����ļ����ɹ�������׼���������ļ�
)
:not_Replace



@Rem ɾ��ѹ����
@set isDelete_compress=false
set /p isDelete_compress=�������Ƿ�ɾ��ѹ����(ֱ�ӻس���ɾ��ѹ����������(true)ɾ��ѹ���ļ�):
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
@echo ɾ��ѹ�����ɹ�
:not_Delete_compress

pause



