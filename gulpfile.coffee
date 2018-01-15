# require

$$ = require 'fire-keeper'
{$, _} = $$.library

# task

###

build()

###

$$.task 'build', ->

  lint = './lint'

  yield $$.compile "#{lint}/*.yaml"

  listClean = []

  source = "#{lint}/coffeelint.json"
  yield $$.copy source, './'
  listClean.push source

  source = "#{lint}/stylint.json"
  yield $$.copy source, './', '.stylintrc'
  listClean.push source

  yield $$.remove listClean