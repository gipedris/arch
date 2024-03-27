:: Setting up variables
set executor=@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe"^ -NoProfile ^
                                                                             -InputFormat None ^
                                                                             -ExecutionPolicy Bypass

:: 
%executor% -Command "($part = Get-Partition -DriveLetter C) -and ($part | Resize-Partition -Size 250GB)" 
%executor% -Command "($part = New-Partition -DiskNumber 0 -UseMaximumSize) -and ($part | Format-Volume) -and ($part |  Set-Partition -NewDriveLetter D)"