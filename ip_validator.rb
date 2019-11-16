def ip_address?(str)
  ip_blocks = str.split(".")
  if ip_blocks.length > 4
    return "#{str} is an invalid IPv4 address."
  else
    counter = 0
    while counter < 4
      if ip_blocks[counter].to_i > 255 || ip_blocks[counter].to_i < 0 || ip_blocks[counter].length.to_i > 3
        return "#{str} is an invalid IPv4 address."
      else
        counter += 1
        if counter == 3 && ip_blocks[counter].length.to_i < 4 && ip_blocks[counter].to_i <= 255 && ip_blocks[counter].to_i > 0
          return "#{str} is a valid IPv4 address."
        end
      end
    end
  end
end

=begin
puts ip_address?("192.168.1.5.244")
puts ip_address?("999.999.999.999")
puts ip_address?("255.255.255.255")
puts ip_address?("1.169.192.1783")
puts ip_address?("1.163.192.999")
puts ip_address?("0000.0000.0000.0000")
=end