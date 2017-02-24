class HomeController < ApplicationController
  def index; end

  def robots
    path = Rails.root + "public/robots.#{Rails.env}.txt"
    robots = File.exist?(path) ? File.read(path) : ''
    render text: robots, layout: false, content_type: "text/plain"
  end
end