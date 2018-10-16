class User < ApplicationRecord
    validates :age,numericality:{less_than: 100,greater_than_or_equal_to:20}
end
