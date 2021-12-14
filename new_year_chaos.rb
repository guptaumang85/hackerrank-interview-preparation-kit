def minimumBribes(q)
  puts(get_bribe_count(q))
end

def get_bribe_count(q)
  input = (1..(q.size)).to_a
  count, bribes = [0,0]
  while count != q.size
    if q[count] != input[count]
      if q[count] == input[count+1]
        bribes += 1
        temp = input[count]
        input[count] = input[count+1]
        input[count+1] = temp
      elsif q[count] == input[count+2]
        bribes += 2
        temp = input[count]
        input[count] = input[count+2]
        temp_2 = input[count+1]
        input[count+1] = temp
        input[count+2] = temp_2
      else
        return "Too chaotic"
      end
    end
    count += 1
  end
  bribes
end

q = [1,2,5,3,7,8,6,4]
minimumBribes(q)
