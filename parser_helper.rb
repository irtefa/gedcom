
def add_start_tag(level,train,new_file,holder) 
  File.open(new_file,'a') do |f2|
    if(level==0)
      f2.puts "<#{train[2]} id= '#{train[1]}'>"
      holder[0] = train[2] 
    elsif(level==1)
      f2 << "  <#{train[1]}>"

      (2..train.length-1).each do|i|
        f2 << "#{train[i]} "
      end
      holder[1] = train[1]
    
    elsif(level==2)
      f2.puts "    <#{train[1]}>#{train[2]}"
      holder[2] = train[1]
    end 
  end
end


def add_end_tag(level,train,new_file,holder)
  File.open(new_file,'a') do |f2|
    if(level==0)
      f2.puts "</#{holder[0]}>"
    elsif(level==1)
      f2.puts "</#{holder[1]}>"
    elsif(level==2)
      f2.puts "</#{holder[2]}>"
    end
  end
end