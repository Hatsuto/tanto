#Gameplay module holds common behaviors such as drawing, shuffling, discarding,
#gaining and more if needed. The methods inside return Procs to be used as 
#anonymous functions.

#If needed to make the functions not return Procs, just take out Proc.new
#the body will be the same and put the parameters enclosed in || in the method
#definition

#Have a class, probably the Game class to require this module
#Then have Game create a hash with the value being a method call

module Gameplay

  def draw
    Proc.new { |params|
      #Put code here
    }
  end

  def shuffle
    Proc.new { |params|
      #Put code here
    }
  end

  def discard
    Proc.new { |params|
      #Put code here
    }
  end

  def gain_card
    Proc.new { |params|
      #Put code here
    }
  end

  def return_card
    Proc.new { |params| 
      #put code here
    }
  end
end