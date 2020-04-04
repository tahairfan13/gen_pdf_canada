class HomeController < ApplicationController
  skip_before_action :authenticate_user!
  def root

  end
end