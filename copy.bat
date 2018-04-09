@echo off
set /p source=<backup_folder_path.txt
set destination=%cd%backup
if "%source%"=="C:\example path\to\backup folder" ( 
    echo Please set the backup folder path in backup_folder_path.txt located in the usb drive.
    @pause
    exit
)
echo You are about to copy backup folder and all of it's content to the usb drive.
echo.
echo Backup Folder: %source% (backup_folder_path.txt)
echo Destination:   %destination%
echo.
@pause
robocopy %source% %cd%backup /mir
@pause