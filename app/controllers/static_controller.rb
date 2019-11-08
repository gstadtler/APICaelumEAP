class StaticController < ApplicationController
  def home
    render json: { status: 'API CaelumEAP' }
  end
end
