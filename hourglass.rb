=begin
  Function Description

  Complete the function hourglassSum in the editor below.

  hourglassSum has the following parameter(s):

  int arr[6][6]: an array of integers
  Returns

  int: the maximum hourglass sum
  Input Format

  Each of the 6 lines of inputs arr[i] contains  space-separated integers arr[i][j].

  Constraints
   -9 <= arr[i][j] <= 9
   0 <= i,j <= 5
  Output Format

  Print the largest (maximum) hourglass sum found in arr .

=end

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
