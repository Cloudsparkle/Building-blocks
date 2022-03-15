Function Ping([string]$hostname, [int]$timeout = 500, [int]$retries = 3)
{
$result = $true
$ping = new-object System.Net.NetworkInformation.Ping #creates a ping object
$i = 0
do {
    $i++
	try
    {
      #write-host "ping"
        $result = $ping.send($hostname, $timeout).Status.ToString()
    }
    catch
    {
			#Write-Host "error"
			continue
		}
		if ($result -eq "success") { return $true }

    } until ($i -eq $retries)
    return $false
}
