class TagsController < ApplicationController
	def show
		@tag = Tag.find(params[:id])
	end
	def index
		@alltags = Tag.all
	end
	def destroy
		@tag = Tag.find(params[:id])
		@tag.destroy
		flash.notice = "Tag #{@tag.name} was deleted."
		redirect_to action: "index"
	end
end