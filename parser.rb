$: << File.dirname('parser_helper.rb') unless $:.include? File.dirname('parser_helper.rb')

require 'parser_helper'

file = File.new('input.txt', 'r')



new_file = 'gedcom.txt'

File.open(new_file,'w') do |f2|
  f2.puts ""
end

token = Hash.new

next_line_flag = false

token[0] = false
token[1] = false
token[3] = false

while line = file.gets
  temp_storage = line.split unless line==""

  level = temp_storage[0] unless line==""

  level = level.to_i
  
  if(line!="")
      if(token[level]==true)
        add_end_tag(level,temp_storage,new_file)
        token[level] = false
      else
        add_start_tag(level,temp_storage,new_file)
        token[level] = true
      end
  end
end


