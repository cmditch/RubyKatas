def prime?(inputted_number)
  n = 2
  while n < (inputted_number / 2) + 1 
    return "Not Prime" if inputted_number % n == 0
    n += 1
  end
  return "Prime!"
end

prime?(13)
prime?(12)
prime?(99)
prime?(234092031128123111211111111111111111111111111111111)
prime?(981593813)



