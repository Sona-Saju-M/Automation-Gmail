import schedule
import time
import os
from subprocess import call
def mail():
    call(['C:/Users/Sona Sanju-2441/PycharmProjects/Gmail/venv/Scripts/python.exe', '-m', 'robot',
          'C:/Users/Sona Sanju-2441/PycharmProjects/Gmail/TestCases/Gmailmsg.robot'])
#schedule.every(6).hours.do(mail)
#schedule.every(3).minutes.do(mail)
schedule.every(10).seconds.do(mail)

while 1:
    schedule.run_pending()
    time.sleep(10)
