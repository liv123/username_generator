# Make sure to run the tests in your /spec folder
# Run `rspec /spec/username_spec.rb` to get started.

def format_name(first, last)
  first = first.gsub(/[\W\d]/, "").downcase
  last = last.gsub(/[\W\d]/, "").downcase
	if (!first.empty? && !last.empty?) 
  	name = first[0] + last
  else
  	name = nil
  end
  name
end

def format_year(year)
	
	puts year.to_s[-2..-1]
	year.to_s.length === 4 ? year.to_s[-2..-1] : nil
end

def check_privilege(i = 0)

end

def build_username
  nil
end
