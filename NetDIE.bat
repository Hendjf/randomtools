@echo off
TITLE Network Diagnostics Script

echo.
echo ============================================
echo       Network Diagnostics and Utilities
echo ============================================
echo.

:: Ping loopback
echo [1/5] Pinging loopback (127.0.0.1)...
ping 127.0.0.1 -n 4
echo.

:: Ping Google DNS
echo [2/5] Pinging Google DNS (8.8.8.8)...
ping 8.8.8.8 -n 4
echo.

:: ARP table
echo [3/5] Displaying ARP cache...
arp -a
echo.

:: Netstat
echo [4/5] Displaying active TCP/UDP connections...
netstat -ano
echo.

:: Traceroute to Google DNS
echo [5/5] Tracing route to 8.8.8.8...
tracert 8.8.8.8
echo.

echo All checks complete.
pause
