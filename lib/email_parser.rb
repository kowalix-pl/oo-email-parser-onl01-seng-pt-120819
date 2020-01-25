require 'pry'
# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  attr_accessor :email 
  def initialize(email)
    @email = email
  end 
  def parse
    
    parser = @email.split.collect {|e_address| e_address.split(",")}
    new_array = parser.uniq.flatten
    new_array
  end
end 