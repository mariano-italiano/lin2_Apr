
#Crontab

*/30 20,21,22,23,0,1,2,3,4 * * 1-5 /usr/bin/lab5.sh

# AT

systemctl restart sshd | at 3:00 PM 04/29/2023
systemctl restart sshd | at 15:00 04/30/2023
