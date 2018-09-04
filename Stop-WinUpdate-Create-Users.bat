echo: Stop Windows Update
NET STOP WUAUSERV
SC CONFIG WUAUSERV START=DISABLED
echo: Create new user YOURUSER
net user YOURUSER /add
net localgroup Guests YOURUSER /add
net localgroup Users YOURUSER /delete
