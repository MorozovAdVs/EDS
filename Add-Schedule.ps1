#Отключение задачи
#Unregister-ScheduledTask -TaskName "Подключение диска EDS" -Confirm:$false

#Установка задачи монтирования диска A при загрузке компьютера.
Register-ScheduledTask -Xml (Get-Content “C:\Подключение диска EDS.xml” | out-string) -TaskName "Подключение диска CERT"
