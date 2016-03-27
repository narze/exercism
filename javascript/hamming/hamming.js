var Hamming = function() {};

Hamming.prototype.compute = function(a, b) {
  if (a.length != b.length)
    throw new Error('DNA strands must be of equal length.');

  if (a == b)
    return 0;

  var diff = 0;

  for (var i = a.length - 1; i >= 0; i--)
    if (a[i] != b[i])
      diff++;

  return diff;
}

module.exports = Hamming;
