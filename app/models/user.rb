class User < ActiveRecord::Base
  has_many  :addresses
  belongs_to :team, optional: true

  def addresses_attributes=(addresses_attributes)
    addresses_attributes.each do |i, address_attributes|
      self.addresses.build(address_attributes)
    end
    #  OR
    # addresses_attributes.values.each do |address_attributes|
    #   self.addresses.build(address_attributes)
    # end
  end

  def team_attributes=(team_attributes)
    self.team = Team.where(:name => team_attributes[:name]).first_or_create do |t|
      t.hometown = team_attributes[:hometown]
    end
    #  OR
    # addresses_attributes.values.each do |address_attributes|
    #   self.addresses.build(address_attributes)
    # end
  end

end
