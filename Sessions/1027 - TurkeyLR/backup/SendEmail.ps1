$to = "Eric.Stewart@xaxis.com" 
$from = "Eric.Stewart@xaxis.com" 
$subject = "TurkeyLR Session ID 1027"
$body = Get-Content "C:\projects\Omni\Sessions\1027 - TurkeyLR\TurkeyLR Session ID 1027.htm" -Raw 
$smtp = "10.252.192.87" 
$file = "C:\projects\Omni\Sessions\1027 - TurkeyLR\TurkeyLR Session ID 1027.xlsx"
$encoding = [System.Text.Encoding]::UTF8 
send-MailMessage -SmtpServer $smtp -To $to -From $from -Subject $subject -Body $body -BodyAsHtml -Encoding $encoding -Attachment $file 
