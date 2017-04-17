class GuestsController < ApplicationController

	def new
	end

	def create
		@guest = Guest.create(guest_params)
		@episodes = Episode.all
		redirect_to '/guests/new' unless @guest.save

	end

	def index
		@guests = Guest.all
	end

	def show
		@guest = Guest.find(:id)  	
	end

	private

	def guest_params
		params.require(:guest).permit(:name, :occupation)
	end
end
