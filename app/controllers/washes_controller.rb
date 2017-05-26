class WashesController < ApplicationController
  def index
    @washes = Wash.all
  end
end
