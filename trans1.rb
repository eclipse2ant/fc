#!/usr/bin/ruby -Ku
# encoding: utf-8

def	trans(s)
	if s =~ /Tr/ || s =~ /-/ || s==nil
		return 0
	elsif s =~ /\((\d+)\.(\d+)\)/
		return "#{$1}.#{$2}".to_f
	elsif s =~ /\((\d+)\)/
		return "#{$1}".to_i
	else return s
	end
end


ARGF.each do |line|
	list=line.chop.split(',')
	list.map! {|x| trans(x) }
	puts list.join(',')
end

