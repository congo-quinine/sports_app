class SportsController < ApplicationController

  def index
    @start = YouTube.search('Help')
  end


end
