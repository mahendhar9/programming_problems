# Build a CSV File parser in Ruby that converts a CSV file to array values.

# Input 
# csv_parser(path_to_file)

# Sample Output
# [
#  ["Name", "Email", "City"], 
#  ["Matt", "matt@example.com", "London"], 
#  ["Joe", "joe@example.com", "New York"], 
#  ["Susan", "susan@example.com", "Paris"]
# ]

require 'rspec'

def csv_parser(file_path)
  File.read(file_path).split(/\n/).map {|line| line.split(',') }
end

# print csv_parser('data.csv')

describe "CSV Parser" do
  it "parses a CSV file and stores each line as an array, with each column as a separate element in the array" do
    data = [["Name", "Email", "City"], ["Matt", "matt@example.com", "London"], ["Joe", "joe@example.com", "New York"], ["Susan", "susan@example.com", "Paris"]]
    expect(csv_parser('data.csv')).to eq(data)
  end
end