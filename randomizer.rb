#Randomizer by Grant Runyon
#03/27/2018

def Assign_pairs(student_names)
	students_shuffle = student_names.shuffle!
	pair = students_shuffle.each_slice(2).to_a
	if pair.last.count == 1
		pair.first.push(pair.last[0])
		pair.pop
	end
	p pair
end

def Name_input(number_names)
	a = []
	number_names.times do |i|
		puts "Please enter name number #{(i + 1)}."
		a.push(gets.chomp)
		end
	Assign_pairs(a)
	end

puts "How many names would you like to enter?"
names = gets.chomp.to_i
Name_input(names)

