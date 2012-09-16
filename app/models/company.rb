class Company < ActiveRecord::Base
  validate:symbol_three_or_four_letters
   def   symbol_three_or_four_letters
     if(symbol.length>4 or symbol.length<3)
     errors.add :symbol,'should be 3 or 4' end

   end
end
