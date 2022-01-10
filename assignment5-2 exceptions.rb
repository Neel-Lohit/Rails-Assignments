
#5.0 Handling and Raising
EXAMPLE_SECRETS = ["het", "keca", "si", nil, "iel"]

def decode(jumble)
  secret = jumble.split("").rotate(3).join("")
  announce(secret)
  secret
end

def decode_all(secrets)
  secrets.map {|s| decode(s) }
rescue
  puts "whew! safe."
end

#-----------------
EXAMPLE_SECRETS = ["het", "keca", "si", nil, "iel"]

def decode(jumble)
  secret = jumble.split("").rotate(3).join("")
  announce(secret)
  secret
end

def decode_all(secrets)
  secrets.map {|s| decode(s) } rescue "it's okay, little buddy."
end

#------------------------
def string_slice(*strings)
  if strings.size > 5
    raise ArgumentError, "Only 5 strings are allowed"
  end
  
  strings.map do |string|
    if string.size < 3
      raise IndexError, "Strings need to be at least 3 characters long"
    end
    
    string.slice(0..2)
  end
end

#--------------------------------------------------
#5.1 Tidying Things Up
class KasayaError < StandardError
end

def robe(type)
  unless type.downcase == "kasaya"
    raise KasayaError, "Wrong robe!"
  end
  
  "Dharmaguptaka's " + type.capitalize + " Robe"
end



