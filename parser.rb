file = File.new('input.txt', 'r')

new_file = File.new('gedcom.txt', 'w')

token = Hash.new

token[0] = false
token[1] = false
token[3] = false

while line = file.gets
  temp_storage = lins.split

  level = temp_storage[0]

  if(check_token(level)==true)
    add_end_tag
  else
    add_start_tag
end


