if "%1"=="uninstall" (
nssm stop NMS
nssm remove NMS confirm
) else (
nssm install NMS nms.exe
nssm set NMS DisplayName NMS
nssm set NMS Description Node Media Server
nssm set NMS AppDirectory %~dp0
nssm start NMS
)

pause 