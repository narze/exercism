class Bob
  hey: (msg) ->
    return 'Fine. Be that way!' unless msg.replace(/ /g, '')
    return 'Whatever.' unless /[a-zA-Z]/.exec msg
    return 'Whoa, chill out!' if msg.toUpperCase() == msg
    return 'Sure.' if msg.slice(-1) == '?'
    return 'Whatever.'

module.exports = Bob
