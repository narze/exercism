class Bob
  hey: (msg) ->
    switch msg.slice(-1)
      when '!' then 'Whoa, chill out!'
      when '?' then 'Sure.'
      when '' then 'Fine. Be that way!'
      else 'Whatever.'

module.exports = Bob
