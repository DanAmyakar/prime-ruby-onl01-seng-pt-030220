def prime?(num)
  i = 2
  if num < 1
    range*((i)..(num-1))
    range.none? {|k| num % k == 0}
  else
    false
  end
end