
def add_start_tag(level,train,new_file) 
  File.open(new_file,'a') do |f2|
    if(level==0)
      f2.puts "<#{train[2]} id= '#{train[1]}'>" 
    elsif(level==1)
      f2.puts "<#{train[1]}>"

      (2..train.length-1).each do|i|
        f2 << "#{train[i]} "
      end
    
      f2.puts ""
    
    elsif(level==2)
      f2.puts "<#{train[1]}>#{train[2]}>"
    end 
  end
end


def add_end_tag(level,train,new_file)
  File.open(new_file,'a') do |f2|
    if(level==0)
      f2.puts "</#{train[2]}>"
    elsif(level==1)
      f2.puts "</#{train[1]}>"
    elsif(level==2)
      f2.puts "</#{train[1]}>"
    end
  end
end