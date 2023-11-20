$connectTestResult = Test-NetConnection -ComputerName alijonbobojonovstorage98.file.core.windows.net -Port 445
if ($connectTestResult.TcpTestSucceeded) {
    # Save the password so the drive will persist on reboot
    cmd.exe /C "cmdkey /add:`"alijonbobojonovstorage98.file.core.windows.net`" /user:`"localhost\alijonbobojonovstorage98`" /pass:`"KAQ/mue0e8P2+D0tzYzyKGex8N+SOtbLfJnENCatvHpFYJp3MnWbPFLps7O24PcDeVhmzp+nm7L7+AStzh9dUQ==`""
    # Mount the drive
    New-PSDrive -Name Z -PSProvider FileSystem -Root "\\alijonbobojonovstorage98.file.core.windows.net\alijon-file-share" -Persist
} else {
    Write-Error -Message "Unable to reach the Azure storage account via port 445. Check to make sure your organization or ISP is not blocking port 445, or use Azure P2S VPN, Azure S2S VPN, or Express Route to tunnel SMB traffic over a different port."
}