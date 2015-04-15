require 'csv'

nchoose2 = [1,3,5,7,9].combination(2).to_a
train = Array.new(10) { Array.new }
CSV.foreach("train.csv").each_with_index do |x, i|
	next if i == 0
	temp = nchoose2.map{ |idx| x[idx[0].to_i].to_i == x[idx[1].to_i].to_i }
	temp = temp << temp.reduce(:|)
	temp = temp + nchoose2.map{ |idx| x[idx[0].to_i].to_i + 1 == x[idx[1].to_i].to_i }
	color_rule = nchoose2.map{ |idx| x[idx[0].to_i-1].to_i == x[idx[1].to_i-1].to_i }
	temp = temp + color_rule
	#temp = temp << color_rule.reduce(:|)
	train[x[10].to_i] << temp
end

rule = []
train.each do |data|
	x = data.transpose
	rule << x.map{|y| y.reduce(:&) }
end

p rule
