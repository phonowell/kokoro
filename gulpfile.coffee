$ = require 'fire-keeper'
fs = require 'fs'
path = require 'path'

# task
for filename in fs.readdirSync './task'
  do (filename) ->

    unless ~filename.search /\.coffee/
      return

    name = filename.replace /\.coffee/, ''
    $.task name, (arg...) ->
      fn_ = require "./task/#{name}.coffee"
      await fn_ arg...