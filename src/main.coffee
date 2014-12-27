{document} = require 'global'
hg = require 'mercury'
{h} = hg

conf = require 'conf'
console.log conf

render = (state) ->
  h 'div.counter', [
    'The state '
    h('code', 'clickCount')
    ' has value: '
    state.value.toString()
    '.'
    h 'input.button',
      type: 'button'
      value: 'Click me!'
      'ev-click': hg.send(state.channels.clicks)
  ]

state = hg.state
  value: hg.value(0)
  channels:
    clicks: (state) ->
      state.value.set(state.value() + 1)

hg.app document.getElementById('main'), state, render
