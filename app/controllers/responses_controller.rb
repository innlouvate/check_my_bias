class ResponsesController < ApplicationController

  def create
    @response = Response.new(params[:response])
    # @response.user_id = current_user.id
    if @response.save
      respond_to do |format|
        format.json{render :json => @response, :status => :created}
      end
    end
  end
end
