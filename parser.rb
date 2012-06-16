$: << File.dirname('parser_helper.rb') unless $:.include? File.dirname('parser_helper.rb')

require 'parser_helper'

file = File.new('input.txt', 'r')

new_file = File.new('gedcom.txt', 'w')

token = Hash.new

next_line_flag = false

token[0] = false
token[1] = false
token[3] = false

while line = file.gets
  temp_storage = line.split unless line==""

  level = temp_storage[0] unless line==""
  
  if(line!="")
    File.open(new_file) do |f2|
      if(token[level]==true)
        add_end_tag(level,f2,temp_storage)
        token[level] = false
      else
        add_start_tag(level,f2,temp_storage)
        token[level] = true
      end
    end
  end
end


