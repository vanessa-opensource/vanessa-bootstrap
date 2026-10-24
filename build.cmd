@chcp 65001

@rem формирование файла конфигурации. для включения раскомментируйте код ниже
call vrunner cf compile --src src/cf --out build/1cv8.cf %*

@rem обновление конфигурации основной разработческой ИБ из хранилища. для включения раскомментируйте код ниже
@rem call vrunner repo load %*
@rem call vrunner infobase update %*

@rem собрать внешние обработчики и отчеты в каталоге build
@rem call vrunner epf compile src/epf/МояВнешняяОбработка --out build %*
@rem call vrunner epf compile src/erf/МойВнешнийОтчет --out build %*

@rem собрать расширения конфигурации внутри ИБ
@rem call vrunner cfe compile --src src/cfe/МоеРасширение build/МоеРасширение.cfe %*
