# require

$$ = require 'fire-keeper'
{$, _} = $$.library

# task

###

build()

###

$$.task 'build', ->

  lint = './lint'

  await $$.compile "#{lint}/*.yaml"

  source = "#{lint}/coffeelint.json"
  await $$.move source, './'

  source = "#{lint}/stylint.json"
  await $$.move source, './', '.stylintrc'