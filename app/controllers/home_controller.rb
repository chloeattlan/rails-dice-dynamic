class HomeController < ApplicationController
  def homepage
    render({ :template => "view_layouts/home"})
  end
end
