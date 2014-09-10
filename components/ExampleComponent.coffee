noflo = require 'noflo'

exports.getComponent = ->
  c = new noflo.Component
  c.description = 'Baz'
  c.inPorts.add 'in', (event, payload) ->
    return unless event is 'data'
    # Do something with the packet, then
    c.outPorts.out.send payload
  c.outPorts.add 'out'
  c