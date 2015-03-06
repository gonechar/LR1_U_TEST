:: Очистка всех логов
DEL e:\PROG\LR1_U_TEST\reset.log

DEL e:\PROG\LR1_U_TEST\genTests\01_GENtest.log
DEL e:\PROG\LR1_U_TEST\delTests\01_DELtest.log
DEL e:\PROG\LR1_U_TEST\copyTests\01_COPYtest.log
DEL e:\PROG\LR1_U_TEST\renTests\01_RENtest.log

DEL e:\PROG\LR1_U_TEST\01_isFileExist\01_EXISTtest.log


:: GENERATE
:: Удаление всех созданных файлов
DEL e:\PROG\LR1_U_TEST\genTests\GENERATE1.done.exe >> reset.log
DEL e:\PROG\LR1_U_TEST\genTests\generate2.done.exe >> reset.log
DEL e:\PROG\LR1_U_TEST\genTests\Generate3.done.exe >> reset.log


DEL e:\PROG\LR1_U_TEST\genTests\CREATE1.done.exe >> reset.log
DEL e:\PROG\LR1_U_TEST\genTests\create2.done.exe >> reset.log
DEL e:\PROG\LR1_U_TEST\genTests\Create3.done.exe >> reset.log

::DELETE
:: Восстановление 6 удаленных тестовых файлов
:: 7-ой на всякий случай, но он не должен удаляться согласно тесту
e:\PROG\LR1_U_TEST\tp.lab1.exe CREATE e:\PROG\LR1_U_TEST\delTests\DELETE.1.destroy.exe >> reset.log
e:\PROG\LR1_U_TEST\tp.lab1.exe CREATE e:\PROG\LR1_U_TEST\delTests\delete.2.destroy.exe >> reset.log
e:\PROG\LR1_U_TEST\tp.lab1.exe CREATE e:\PROG\LR1_U_TEST\delTests\Delete.3.destroy.exe >> reset.log

e:\PROG\LR1_U_TEST\tp.lab1.exe CREATE e:\PROG\LR1_U_TEST\delTests\DEL.1.destroy.exe >> reset.log
e:\PROG\LR1_U_TEST\tp.lab1.exe CREATE e:\PROG\LR1_U_TEST\delTests\del.2.destroy.exe >> reset.log
e:\PROG\LR1_U_TEST\tp.lab1.exe CREATE e:\PROG\LR1_U_TEST\delTests\Del.3.destroy.exe >> reset.log

e:\PROG\LR1_U_TEST\tp.lab1.exe CREATE e:\PROG\LR1_U_TEST\delTests\DELIM.destroy.exe >> reset.log

::COPY
:: Удаляем копии файлов сделанных во время тестов
DEL e:\PROG\LR1_U_TEST\copyTests\COPY.1.SUCCESS.exe >> reset.log
DEL e:\PROG\LR1_U_TEST\copyTests\copy.2.SUCCESS.exe >> reset.log
DEL e:\PROG\LR1_U_TEST\copyTests\Copy.3.SUCCESS.exe >> reset.log

::RENAME
:: Переименовываем обратно
e:\PROG\LR1_U_TEST\tp.lab1.exe RENAME e:\PROG\LR1_U_TEST\renTests\RENAME.1.SUCCESS.exe e:\PROG\LR1_U_TEST\renTests\RENAME.1.exe
e:\PROG\LR1_U_TEST\tp.lab1.exe rename e:\PROG\LR1_U_TEST\renTests\rename.2.SUCCESS.exe e:\PROG\LR1_U_TEST\renTests\rename.2.exe
e:\PROG\LR1_U_TEST\tp.lab1.exe Rename e:\PROG\LR1_U_TEST\renTests\Rename.3.SUCCESS.exe e:\PROG\LR1_U_TEST\renTests\Rename.3.exe

e:\PROG\LR1_U_TEST\tp.lab1.exe REANIMATE e:\PROG\LR1_U_TEST\renTests\REANIMATE.FAULT_Rename_ERROR_ERROR.exe e:\PROG\LR1_U_TEST\renTests\REANIMATE.FAULT.exe



DEL e:\PROG\LR1_U_TEST\genTests\Create.FAULT.exe >> reset.log




