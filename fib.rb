
# === fibonacci arr recursive === #

def fibs_rec(n, result = [0,1])  
  return [] if n == 0 
  return [0] if n == 1
  return [0,1] if n == 2
  prev = fibs_rec(n - 1)
  return prev << prev[-1] + prev[-2]    
end

# === fibonacci arr itterative === #

def fibs(n)  
  return [] if n == 0 
  return [0] if n == 1
  return [0,1] if n == 2
  result = [0,1]
  for i in (2).upto(n-1)
    result[i] = result[i - 2] + result[i - 1]
  end
  result
end

# === Tester === #

loop do
  puts "Enter Fib number: "
  n = gets.chomp.to_i
  break if n == -1
  p fibs_rec(n)  
end
