class LibraryController < ApplicationController
before_action :authenticate_user!

	def index 
		@Library_books = current_user.library_additions
	end
end