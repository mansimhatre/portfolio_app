class Investment < ActiveRecord::Base
             belongs_to :portfolio
             belongs_to :company

             def worth_at_cost
               worth= quantity* cost
               return worth
             end

             def worth_today
               worth= quantity* company.price
               return worth
             end


  validate :cost_should_be_positive

   def cost_should_be_positive
     if (cost<0)
       errors.add :cost,'Should be positive'
     end
   end
  validate :quantity_should_be_positive

  def  quantity_should_be_positive

    if (quantity<0)
      errors.add :quantity,'Should be positive'
    end
  end

end
