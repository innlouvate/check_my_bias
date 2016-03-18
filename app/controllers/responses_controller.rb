require 'json'

class ResponsesController < ApplicationController
  respond_to :json

  def create
    @response = Response.new(answer_id: params[:answer_id])
    # @response.user_id = current_user.id
    if @response.save
      respond_to do |format|
        format.json{render :json => @response, :status => :created}
      end
    end

  end
end
