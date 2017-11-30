# require

$$ = require 'fire-keeper'
{$, _, Promise} = $$.library
co = Promise.coroutine

# task

###

  build()

###

$$.task 'build', co ->

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