idef service(score)
	scores = score.split(':')
  sum = scores.first.to_i + scores.last.to_i
  
  if sum < 40 # regular game 
    check_turn(sum, 5)
  else # sudden death
    check_turn(sum, 2)
  end
end

def check_turn(sum, round_count)
  n = 0
  # abstract calculation of current round
  while (n - sum) <= 0 || (n - sum) > round_count do
    n += round_count
  end
 
  # determine which player is on turn
  # odd 'first', even 'second'
  # 5. Round => 5 odd  => 'first'
  # 6. Round => 6 even => 'second'
  if (n / round_count) % 2 != 0
   'first'
  else
   'second'
  end
end
