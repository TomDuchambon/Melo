class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def landing
  end

  def special
  end
end
