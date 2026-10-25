@chcp 65001

@rem обновление конфигурации основной разработческой ИБ без поддержки или на поддержке. по умолчанию в каталоге build/ib
@rem В vrunner 3 параметр --disable-support удалён; обновление выполняется штатной командой.
call vrunner infobase update --src src/cf %*

@rem обновление конфигурации основной разработческой ИБ из хранилища. для включения раскомментируйте код ниже
@rem call vrunner repo load %*
@rem call vrunner infobase update %*

@rem собрать внешние обработчики и отчеты в каталоге build
@rem call vrunner epf compile src/epf/МояВнешняяОбработка --out build %*
@rem call vrunner epf compile src/erf/МойВнешнийОтчет --out build %*

@rem собрать расширения конфигурации внутри ИБ
@rem call vrunner cfe load src/cfe/МоеРасширение --extension-name МоеРасширение --no-update-db %*

@rem обновление в режиме Предприятие
call vrunner run enterprise --command "ЗапуститьОбновлениеИнформационнойБазы;ЗавершитьРаботуСистемы;" --execute $runnerRoot\epf\ЗакрытьПредприятие.epf %*
