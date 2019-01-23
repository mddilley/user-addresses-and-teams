class UsersController < ApplicationController
  def new
    @user = User.new
    # has_many adds collection.build
    @user.addresses.build(:address_type => "Home")
    @user.addresses.build(:address_type => "Business")
    @user.addresses.build(:address_type => "Mars")
    @user.build_team # belongs to adds build_association
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  private
    def user_params
      params.require(:user).permit(:email, :addresses_attributes => [:street_1, :street_2], :team_attributes => [:name, :hometown])
    end
end
