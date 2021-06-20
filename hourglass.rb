def hourglassSum(arr)
  # Write your code here
  i,j = [0,0]
  max_sum = -63
  4.times do 
    4.times do 
      sum = get_sum(arr, [i,j])
      max_sum = sum > max_sum ? sum : max_sum  
      j += 1
    end
    j = 0
    i += 1
  end
  max_sum
end

def get_sum(arr, position)
  row, col = position
  sum = 0
  top  = arr[row][col..(col+2)].sum
  row += 1
  mid = arr[row][col+1]
  row += 1
  last = arr[row][col..(col+2)].sum
  top + mid + last
end
