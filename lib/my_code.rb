def map(arr)
  newArr = []
  i = 0 
  
  while i < arr.size do
    newArr[i] = yield(arr[i])   
    i += 1
  end
  newArr
end

def reduce(arr, start_opt = nil)
  if start_opt  
    return_arr = start_opt
    i = 0
  else  
    return_arr = arr[0]
    i = 1
  end
  
  while i < arr.length
    return_arr = yield(return_arr, arr[i])
    i += 1
  end
  return_arr
end