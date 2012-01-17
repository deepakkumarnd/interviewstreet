#!/usr/bin/env ruby
strings = []
count = gets.to_i
count.times { strings<< gets.chomp }
def get_similarity str
    match = 0 
    len = str.length
    sub_str = (0..(len-1)).collect{ |x| str.slice(x,len)}
    sub_str.each do |s|
        i = 0
        while(s[i]==str[i] &&(i<len)) do i+=1 end
        match+=i
    end
    match
end

similarity = strings.collect { |str| get_similarity(str)  }
similarity.each{ |sim| puts sim }
