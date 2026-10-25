#!/bin/bash

# Сборка основной разработческой ИБ. по умолчанию в каталоге build/ib
vrunner infobase init --src src/cf "$@"

# собрать внешние обработчики и отчеты в каталоге build
# vrunner epf compile src/epf/МояВнешняяОбработка --out build "$@"
# vrunner epf compile src/erf/МойВнешнийОтчет --out build "$@"

# собрать расширения конфигурации внутри ИБ
# vrunner cfe load src/cfe/МоеРасширение --extension-name МоеРасширение --no-update-db "$@"

# Обновление в режиме Предприятия
vrunner run enterprise --command "ЗапуститьОбновлениеИнформационнойБазы;ЗавершитьРаботуСистемы;" \
 --execute \$runnerRoot/epf/ЗакрытьПредприятие.epf "$@"
