$ = require 'fire-keeper'

module.exports = ->

  base = './lint'

  await $.chain $
  .compile_ "#{base}/*.yaml"
  .move_ "#{base}/coffeelint.json", './'
  .move_ "#{base}/stylint.json", './', '.stylintrc'