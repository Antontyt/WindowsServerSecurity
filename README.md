# WindowsServerSecurity
Скрипт настройки Windows Server по безопасности \ Script for setup first security on Windows Server

Выполняемые действия:
> 1. Переименование учётной записи адмнистратора
> 2. Смена RDP порта вместо стандартного на ваш. Для подключения после нужно указывать IP_вашего_сервера:Ваш_порт
> 3. Отключается родной Windows Defender
> 4. Отключается сервис поиска по системе (для минимизации расхода ресурсов)
> 5. Отключается телеметрия Windows
> 6. Отключаются адмнские расшаренные ресурсы
> 7. Удаляется MS EDGE
> 8. Отключается удалённый реестр
> 9. Отключается Cortana
> 10. Отключается серис дефрагементации дисков
> 11. Устанавливается Mozilla ESR
> 12. Устанавливается Notepad++
> 13. Устанавливается обновления NET Framework 4.8
> 14. Устанавливается русская локализация (Согласно требованиям для TSLab)
> 15. Производится настройка Windows Firewall (Отключается ответ на PING\Разрешаются RDP порты)
> 16. Устанавливается NTP Service (Для синхронизации времени\Поумолчанию регион настроек Россия)
> 17. Устанавливается программа RestartOnCrash для перезапуска программ после критического сбоя. (Программы нужно добавлять отдельно)
> 18. Добавляется иконка на рабочий стол для установки обновлений и работы с небольшими настройками системы

Для запуска сервиса настройки:
> Cкопируйте пакет PrepareService_1.1.zip на рабочий стол. 
> Распакуйте файлы в любую папку и запустите файл Prepare.bat
> Следуйте указанием программы

Тестирование произоводилось на операционных системах:
> Windows 2022 Server
> Windows 2019 Server

Используются оригинальные программы с официальных сайтов

==============================================================================================
Бат файлы по установке из папки MiniProgramsAfrerMain можно запускать после установки основного пакета
