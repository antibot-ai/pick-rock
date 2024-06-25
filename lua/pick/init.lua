--- Выбирает указанные поля из исходной таблицы и возвращает новую таблицу с этими полями
-- @module pick
local pick

--- Выбирает поля из таблицы
-- @param source (table) Исходная таблица
-- @param fields (table) Таблица с полями которые будут выбраны из исходной таблицы
-- @return Итоговая таблица
-- @usage
-- local source = { a = 1, b = 2, c = 3 }
-- local fields = { 'a', 'c' }
-- local result = pick(source, fields) -- { a = 1, c = 3 }
function pick(source, fields)
  local result = {}

  for key, value in pairs(fields) do
    if type(key) == 'number' then
      key = value
    end

    if source[key] ~= nil then
      result[key] = source[key]
    end
  end

  return result
end

return pick
