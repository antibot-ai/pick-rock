package = 'pick'
version = 'scm-1'
description = {
  summary = 'Pick fields from table',
  license = 'MIT'
}
source  = {
  url = 'file:///usr/local/src/app/'..package..'-'..version..'.tar.gz'
}
build = {
  type = 'builtin',
  modules = {
    [package] = 'lua/'..package..'/init.lua'
  }
}
dependencies = {
  'lua >= 5.1'
}