class TrailsController < ApplicationController
  before_action :set_trail, only: [:show]

  def show
  end

  private

    def set_trail
      @trail = Trail.find(params[:id])
    end

end
