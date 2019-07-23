def all_words_capitalized?(arr)
 arr.all?{|str| str==str.capitalize}
end

def no_valid_url?(arr)
 arr.none?{|str| str.end_with?('.com', '.net', '.io',  '.org')}
end

def any_passing_students?(arr)
 arr.any?{|hash| (hash[:grades].sum/hash[:grades].length-1)*1.0 >=75}


end
