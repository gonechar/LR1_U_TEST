:: Очистка всех логов
DEL e:\PROG\LR1\reset.log

DEL e:\PROG\LR1\genTests\01_GENtest.log
DEL e:\PROG\LR1\delTests\01_DELtest.log
DEL e:\PROG\LR1\copyTests\01_COPYtest.log
DEL e:\PROG\LR1\renTests\01_RENtest.log


:: GENERATE
:: Удаление всех созданных файлов
DEL e:\PROG\LR1\genTests\GENERATE1.done.exe >> reset.log
DEL e:\PROG\LR1\genTests\generate2.done.exe >> reset.log
DEL e:\PROG\LR1\genTests\Generate3.done.exe >> reset.log


DEL e:\PROG\LR1\genTests\CREATE1.done.exe >> reset.log
DEL e:\PROG\LR1\genTests\create2.done.exe >> reset.log
DEL e:\PROG\LR1\genTests\Create3.done.exe >> reset.log

::DELETE
:: Восстановление 6 удаленных тестовых файлов
:: 7-ой на всякий случай, но он не должен удаляться согласно тесту
e:\PROG\LR1\tp.lab1.exe CREATE e:\PROG\LR1\delTests\DELETE.1.destroy.exe >> reset.log
e:\PROG\LR1\tp.lab1.exe CREATE e:\PROG\LR1\delTests\delete.2.destroy.exe >> reset.log
e:\PROG\LR1\tp.lab1.exe CREATE e:\PROG\LR1\delTests\Delete.3.destroy.exe >> reset.log

e:\PROG\LR1\tp.lab1.exe CREATE e:\PROG\LR1\delTests\DEL.1.destroy.exe >> reset.log
e:\PROG\LR1\tp.lab1.exe CREATE e:\PROG\LR1\delTests\del.2.destroy.exe >> reset.log
e:\PROG\LR1\tp.lab1.exe CREATE e:\PROG\LR1\delTests\Del.3.destroy.exe >> reset.log

e:\PROG\LR1\tp.lab1.exe CREATE e:\PROG\LR1\delTests\DELIM.destroy.exe >> reset.log

::COPY
:: Удаляем копии файлов сделанных во время тестов
DEL e:\PROG\LR1\copyTests\COPY.1.SUCCESS.exe >> reset.log
DEL e:\PROG\LR1\copyTests\copy.2.SUCCESS.exe >> reset.log
DEL e:\PROG\LR1\copyTests\Copy.3.SUCCESS.exe >> reset.log

::RENAME
:: Переименовываем обратно
e:\PROG\LR1\tp.lab1.exe RENAME e:\PROG\LR1\renTests\RENAME.1.SUCCESS.exe e:\PROG\LR1\renTests\RENAME.1.exe
e:\PROG\LR1\tp.lab1.exe rename e:\PROG\LR1\renTests\rename.2.SUCCESS.exe e:\PROG\LR1\renTests\rename.2.exe
e:\PROG\LR1\tp.lab1.exe Rename e:\PROG\LR1\renTests\Rename.3.SUCCESS.exe e:\PROG\LR1\renTests\Rename.3.exe

e:\PROG\LR1\tp.lab1.exe REANIMATE e:\PROG\LR1\renTests\REANIMATE.FAULT_Rename_ERROR_ERROR.exe e:\PROG\LR1\renTests\REANIMATE.FAULT.exe



DEL e:\PROG\LR1\genTests\Create.FAULT.exe >> reset.log




