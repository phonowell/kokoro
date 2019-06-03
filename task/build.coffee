$ = require 'fire-keeper'
{_} = $

# return
module.exports = ->

  base = './lint'

  await $.chain $
  .compile_ "#{base}/*.yaml"
  .move_ "#{base}/coffeelint.json", './'
  .move_ "#{base}/stylint.json", './', '.stylintrc'
  .move_ "#{base}/tslint.json", './'
