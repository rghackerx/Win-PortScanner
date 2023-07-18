# basic local port scanner - Raman Gautam
Write-Output "Basic Port Scanner - rghackerx"

$HostName = Read-Host "Enter the IP:: "
$ports = Read-Host "Enter the ports you want to scan (seprated with comman):: "
$ports_array = @($ports -split ',')


foreach($port in $ports_array)
{

$result = Test-NetConnection -ComputerName $HostName -Port $port
Write-Output "TCP CONNECTION TO $HostName ON PORT $port"
Write-Output " IP = $($result.RemoteAddress)"
Write-Output "  Port         : $($result.RemotePort)"
Write-Output "  TcpTestSucceeded : $($result.TcpTestSucceeded)"
Write-Output "  PingSucceeded    : $($result.PingSucceeded)"
Write-Output ""

}


























