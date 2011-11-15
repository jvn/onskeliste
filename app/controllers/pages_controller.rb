class PagesController < ApplicationController
  def forside
    @users = User.all
  end

end
