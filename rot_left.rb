# rotate array a to left by position d
def rotLeft(a,d)
  size = a.length
  count = 0
  rotated_array = Array.new(size)
  while count != size do
    rotated_array[count] = a[(count + d)%size]
    count += 1
  end
  rotated_array
end
print rotLeft([1,2,3,4,5],2)