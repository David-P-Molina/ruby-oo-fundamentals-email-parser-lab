require 'pry'
class EmailAddressParser
    #attr_accessor :email_addresses
    attr_writer :email_addresses
    attr_reader :email_addresses
    def initialize(email_addresses)
        @email_addresses = email_addresses
    end
    def parse
        binding.pry
        if email_addresses.include?(", ")#parses CSV emails
            email_addresses.split(", ").uniq
        else
            email_addresses.split(" ")#parses delimited emails


        end
    end
end

