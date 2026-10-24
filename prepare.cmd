@chcp 65001

@rem Сборка основной разработческой ИБ. по умолчанию в каталоге build/ib
call vrunner infobase init --src src/cf %*

@rem обновление конфигурации основной разработческой ИБ из хранилища. для включения раскомментируйте код ниже
@rem call vrunner repo load %*
@rem call vrunner infobase update %*

@rem собрать внешние обработчики и отчеты в каталоге build
@rem call vrunner epf compile src/epf/МояВнешняяОбработка --out build %*
@rem call vrunner epf compile src/erf/МойВнешнийОтчет --out build %*

@rem собрать расширения конфигурации внутри ИБ
@rem call vrunner cfe compile --src src/cfe/МоеРасширение build/МоеРасширение.cfe %*

@rem Обновление в режиме Предприятия
call vrunner run enterprise --command "ЗапуститьОбновлениеИнформационнойБазы;ЗавершитьРаботуСистемы;" --execute $runnerRoot\epf\ЗакрытьПредприятие.epf %*
