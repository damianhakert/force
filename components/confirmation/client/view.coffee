{ View } = require 'backbone'
template = -> require('../index.jade') arguments...

module.exports = class ConfirmationModal extends View
  class: 'confirmation-modal'

  events:
    'click .js-confirm': 'action'
    'click .js-ignore': 'action'

  initialize: ({ @data }) -> #

  action: (e) ->
    $target = $(e.currentTarget)
    return if $target.attr('href')?
    e.preventDefault()
    @trigger 'action', $target

  render: ->
    @$el.html template @data
    this
