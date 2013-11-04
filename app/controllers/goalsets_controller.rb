class GoalsetsController < ApplicationController
	respond_to :json
	def index
		respond_with Goalset.all
	end

	def show
    respond_with Goalset.find(params[:id])
  end

  def create
    respond_with Goalset.create(params[:goalset])
  end

  def update
    respond_with Goalset.update(params[:id], params[:goalset])
  end

  def destroy
    respond_with Goalset.destroy(params[:id])
  end
end
