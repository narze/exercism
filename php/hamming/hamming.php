<?php

function distance($a, $b)
{
  if (strlen($a) != strlen($b))
    throw new InvalidArgumentException("DNA strands must be of equal length.", 1);

  if ($a == $b)
    return 0;

  $dist = 0;

  for ($i=strlen($a) - 1; $i >=0 ; $i--)
    if ($a[$i] != $b[$i])
      $dist++;

  return $dist;
}
