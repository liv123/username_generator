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
	year.to_s.length === 4 ? year.to_s[-2..-1] : nil
end

def check_privilege(i = 0)
	role = ["user", "seller", "manager", "admin"]
	if i<role.length
	role[i]
	else role.last
	end	
end

def user_type_prefix (i)
	i >= 1 ? check_privilege(i) + "-" : ""
end

def build_username (first, last, year, i = 0)
  user_type_prefix(i) +format_name(first, last) + format_year(year)
end
def generate_username (first, last, year, i = 0)
	temp = build_username(first, last, year, i) 
	if $users[:temp] != nil
		temp = temp + "_" + $users[:temp].to_s
		$users[:temp] += 1
	else
		$users[:temp] = 1
	end	
	temp	
end

$users = Hash.new 
