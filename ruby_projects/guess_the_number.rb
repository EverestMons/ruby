def guess_number guess
  number = 54
  unless guess >= number
    return "Incorrect, number is too low"
  end
  unless guess <= number
    return "Incorrect, number is too high"
  end
  if number == guess
    return "Good job sonny boy!"
  end
end


puts guess_number 54
