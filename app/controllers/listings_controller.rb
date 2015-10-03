class ListingsController < ApplicationController
  def new
      @lising = Listing.new
  end
end
