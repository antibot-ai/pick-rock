local function pick(source, fields)
  local result = {}

  for _, field in ipairs(fields) do
    if source[field] ~= nil then
      result[field] = source[field]
    end
  end

  return result
end

return pick
