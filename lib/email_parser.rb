# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

    attr_accessor :email

def initialize(emails)
    @email = emails
end

def parse
    email_list = @email.split(/[,|\s]/).uniq
    email_list.reject! {|item| item.empty?}
    email_list
end

end