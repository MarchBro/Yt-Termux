#!/data/data/com.termux/files/usr/bin/bash

#Имя проекта: Yt-Termux
#Coded by: MarchBro
#Github: https://github.com/MarchBro/Yt-Termux 
#Дата : 09/05/2024

#Внимание!!! Будут созданы директоии ~/bin/termux-url-opener  и ~/storage/shared/Youtube

echo -e "\e[035m"  "Обновление установленных пакетов\n"
pkg update && pkg upgrade -y


echo -e "\e[032m" "Запрос доступа к хранилищу\n"
echo -e "\e[032m" "Разрешить доступ!\n"
sleep 2
termux-setup-storage 

#echo -e "\e[033m" "Установка python\n"
pkg install python -y

echo -e "\e[034m"  "Установка yt-dlp mutagen\n"
pip install yt-dlp mutagen

echo -e "\e[032m"  "Создаем директорию YouTube на картепамяти для хранения контента\n"
mkdir ~/storage/shared/Youtube


echo -e "Создаём папку bin\n"
mkdir ~/bin

echo -e "Создание Termux-URL-Opener скрипта.\n"

cp termux-url-opener ~/bin/

chmod +x ~/bin/termux-url-opener

echo -e "\n"
echo -e "\e[032m" "Ура, выполнено!"
echo -e "\e[032m" "Теперь вы можете поделиться любым видео  YouTube с помощью Termux.  Вам будет предложено выбрать качество загружаемого видео, после чего оно будет автоматически скачано.  Если Вы поделитесь короткометражками, они будут загружены автоматически."
echo -e "\e[033m" "Посетите сайт www.4pda.ru, там найдёте много полезных программ)))"

