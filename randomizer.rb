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

Assign_pairs(["Grant", "Justin", "Zach", "Don", "Lisa"])