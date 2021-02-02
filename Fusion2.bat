
;VARIÁVEIS

set ORIGEM=\\192.168.2.2\FUSION-PACOTE
set DESTINO=c:\temp\install\fusion

;INSTALAÇÃO FUSION X86

IF NOT EXIST "%PROGRAMFILES(X86)%" ( 


if not exist %ProgramFiles%\FusionInventory-Agent (
	
	start %ORIGEM%\fusioninventory-agent_windows-x86_2.6.exe /S /acceptlicense /no-start-menu /server='http://192.168.2.189/glpi/plugins/fusioninventory/' /runnow /add-firewall-exception /installtasks=Full /execmode=Service
	
)
 )

;INSTALAÇÃO FUSION X64

IF EXIST "%PROGRAMFILES(X86)%" ( 


if not exist %ProgramFiles%\FusionInventory-Agent (
	
	start %ORIGEM%\fusioninventory-agent_windows-x64_2.6.exe /S /acceptlicense /no-start-menu /server='http://192.168.2.189/glpi/plugins/fusioninventory/' /runnow /add-firewall-exception /installtasks=Full /execmode=Service
)
 )