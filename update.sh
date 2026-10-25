#!/bin/bash

# обновление конфигурации основной разработческой ИБ без поддержки или на поддержке. по умолчанию в каталоге build/ib
# В vrunner 3 параметр --disable-support удалён; обновление выполняется штатной командой.
vrunner infobase update --src src/cf "$@"

# обновление конфигурации основной разработческой ИБ из хранилища. для включения раскомментируйте код ниже
# vrunner repo load "$@"
# vrunner infobase update "$@"

# собрать внешние обработчики и отчеты в каталоге build
# vrunner epf compile src/epf/МояВнешняяОбработка --out build "$@"
# vrunner epf compile src/erf/МойВнешнийОтчет --out build "$@"

# собрать расширения конфигурации внутри ИБ
# vrunner cfe compile --src src/cfe/МоеРасширение build/МоеРасширение.cfe "$@"

# обновление в режиме Предприятие
vrunner run enterprise --command "ЗапуститьОбновлениеИнформационнойБазы;ЗавершитьРаботуСистемы;" \
 --execute \$runnerRoot/epf/ЗакрытьПредприятие.epf "$@"
