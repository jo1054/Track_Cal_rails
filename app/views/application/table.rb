#!/usr/bin/env ruby

col_data = []
CSV.foreach(filename) {|row| col_data << row[0]}
puts col_data