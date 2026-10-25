#!/bin/bash

# формирование файла конфигурации. для включения раскомментируйте код ниже
vrunner cf compile --src src/cf build/1cv8.cf "$@"

# обновление конфигурации основной разработческой ИБ из хранилища. для включения раскомментируйте код ниже
# vrunner repo load "$@"
# vrunner infobase update "$@"

# собрать внешние обработчики и отчеты в каталоге build
# vrunner epf compile src/epf/МояВнешняяОбработка --out build "$@"
# vrunner epf compile src/erf/МойВнешнийОтчет --out build "$@"

# собрать расширения конфигурации внутри ИБ
# vrunner cfe load src/cfe/МоеРасширение --extension-name МоеРасширение --no-update-db "$@"
