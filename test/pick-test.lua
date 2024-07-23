-- test/pick-test.lua
local luatest = require('luatest')
local g = luatest.group('translit')

-- Функция выбиро полей из таблицы
local pick = require('lua.pick.init')

-- Тесты
g.test_pick = function()
  local source = { a = 1, b = 2, c = 3 }
  local fields = { 'a', 'c' }
  local result = pick(source, fields)

  luatest.assert_equals(result.a, 1)
  luatest.assert_equals(result.c, 3)
end

g.test_pick_arr = function()
  local source = { 1, 2, 3, 4, 5 }
  local fields = { 3, 5 }
  local result = pick(source, fields)

  luatest.assert_equals(result[3], 3)
  luatest.assert_equals(result[5], 5)
end
