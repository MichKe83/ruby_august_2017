class UserController < ApplicationController

	def allUsers
		@users = User.all

		# return render json: @users
		return	render 'allUsers.html'

	end

	def createUser
		User.create(name: params[:name])
		
		return redirect_to '/users'
	end


	def userEdit

		User.find(params[:id])

		return render 'userEdit.html'
	end

	def total

		@total = User.count

		return render text: "Total users: #{@total}"
	end

	def user1

		# User.find(params[:id])
			p '!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
		return render json: User.find(1)

	end


end
