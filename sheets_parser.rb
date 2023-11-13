# Parsing Google Sheet filled with random numbers

require 'csv'

# Accessing random number worksheet

file = CSV.read("Test Sheet - Folha1.csv")

# puts "Printing each row:"
# file.each do |row|
#   p row
# end

# r = 0;
# c = 0;
# puts "Printing each row:"
# file.each do |row|
#   row.each do |cell|
#      puts "Printing cell number #{c} from row number #{r}"
#     p cell
#     c += 1
#   end
#   c = 0
#   r += 1
# end

# Accessing mock inscription worksheet

file_parsed = CSV.parse(File.read("Test Sheet - Folha2.csv"), headers: true)
inscriptions = []
file_parsed.each do |row|
  inscriptions << row.to_h
end

inscriptions.each do |inscription|
  puts "Name: #{inscription["Name"]}.\n
    Father's name: #{inscription["Father's Name"]}.\n
    Father's email: #{inscription["Father's Email"]}.\n
    Mother's name: #{inscription["Mother's Name"]}.\n
    Mother's email: #{inscription["Mother's Email"]}."
end