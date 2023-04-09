# BASH+Docker

Запуск контейнера в bash режиме:

`docker run -ti --rm -v $ABSOLUTE_PATH/skolkovo_test/z3/data:/data ubuntu /bin/bash`

Переход в папку со скриптами:

`cd ./data`

Запуск первого скрипта:

`./count_words.sh ./dracula.txt`

Запуск второго  скрипта:

`./top_10_words_to_file.sh ./dracula.txt ./out/`

Выход из контейнера:

`exit`
