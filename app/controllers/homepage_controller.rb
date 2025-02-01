class HomepageController < ApplicationController
  def display_home
    render({:template => "homepage"})
  end
end
