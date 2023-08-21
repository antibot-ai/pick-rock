local function pick(source, fields)
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
