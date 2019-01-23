class User < ActiveRecord::Base
  has_many  :addresses
  belongs_to :team, optional: true

  def addresses_attributes=(addresses_attributes)
    addresses_attributes.each do |address_attributes|
      self.addresses.build(address_attributes)
    end
  end

end
