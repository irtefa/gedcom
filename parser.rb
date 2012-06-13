file = File.new('input.txt', 'r')

new_file = File.new('gedcom.txt', 'w')

token = Hash.new

next_line_flag = false

token[0] = false
token[1] = false
token[3] = false

while line = file.gets
  temp_storage = lins.split

  level = temp_storage[0]

  if(check_token(level,token[level])==true)
    add_end_tag
    token[level] = false
  else
    add_start_tag
    token[level] = true
  end
end


