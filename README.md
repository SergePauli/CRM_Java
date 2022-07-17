# CRM_JAVA
java-версия приложения ЦБС-контракты&CRM

## Папка развертывания приложения в докер-контейнерах

## Совместимость
OC: Linux-debian(ubuntu)-based сервер, с установленным docker Version=>19 && docker-compose plugin

## Установка приложения setup.sh

### перед запуском 
 1. отредактируйте скрипт crm_start (sudo nano bin/crm_start.sh),
  указав абсолютный путь к папке db_data в строке запуска docker-контейнера
  (например: 'cd /home/cbs_admin/CRM_Java')
 2. отредактируйте скрипт docker-compose.yml (nano docker-compose.yml),
  указав абсолютный путь к папке db_data в настройке 'volumes' сервиса 'database'
  (например: '- /home/cbs_admin/CRM_Java/db_data:/var/lib/mysql') 
 3. перейдите в папку glassfish, скопируйте туда архив сервера приложений glassfish4.zip 

### запуск setup.sh  
  используйте 
    sudo /bin/bash setup.sh 
  для инсталляции образов, контейнеров, сервиса проекта в систему.
  по истечении 2-3 минут, проверьте статус сервиса:
    sudo systemctl status CRM.service

## загрузка-восстановление данных СУБД load_data.sh

## перед запуском 
 1. перейдите в папку mySQL, скопируйте туда дамп базы даных Dump.sql  
 2. запустите скрипт импорта командой:
      sudo /bin/bash load_data.sh 