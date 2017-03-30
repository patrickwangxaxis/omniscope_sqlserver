$to = "Eric.Stewart@xaxis.com" 
$from = "Eric.Stewart@xaxis.com"; "Patrick.Wang@xaxis.com" 
$subject = "Spain Session ID 1043"
$body = Get-Content "C:\projects\Omni\Sessions\1043 - Spain\Spain Session ID 1043.htm" -Raw 
$smtp = "10.252.192.87" 
$file = "C:\projects\Omni\Sessions\1043 - Spain\Spain Session ID 1043.xlsx"
$encoding = [System.Text.Encoding]::UTF8 
send-MailMessage -SmtpServer $smtp -To $to -From $from -Subject $subject -Body $body -BodyAsHtml -Encoding $encoding -Attachment $file 
