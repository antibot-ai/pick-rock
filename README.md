# Выбирает поля из таблицы
Модуль выбирает указанные поля из исходной таблицы и возвращает новую таблицу с этими полями.

### Параметры
- **source** (table) Исходная таблица
- **fields** (table) Таблица с полями которые будут выбраны из исходной таблицы

# Установка
### tarantool
```bash
tt rocks install --only-server=https://rocks.antibot.ru pick
```
### luarocks
```bash
luarocks install --server=https://rocks.antibot.ru pick
```

# Использование
```lua
local pick = require('pick')

local source = { a = 1, b = 2, c = 3 }
local fields = { 'a', 'c' }
local result = pick(source, fields) -- { a = 1, c = 3 }
print(result.a) -- 1
print(result.c) -- 3
```

# Генерация ldoc
```bash
ldoc -s '!new' -d ldoc lua
```

# Тестирование
```bash
luatest test/*
```
