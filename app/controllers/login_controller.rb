class LoginController < ApplicationController
	def auth
		@u = User.all
		res=request.original_url
		if res.include? "user"

			params.each do |k,v|
				@us=params[:user]
				@pw=params[:pass]
				# @user = User.where(username: )
			end
			response = HTTParty.post("https://portal.stjosephstechnology.ac.in/Authenticate?user=#{@us}&pass=#{@pw}")
			if response.include? "staff"
				@user = User.find_by_username(params[:user])
				if @user.nil?
					@user=User.new(:username => @us, :password => @pw, :password_confirmation=> @pw)
					# @user.id=User.id
					@user.save

					puts "user #{@user.id}"
					# after_sign_up_path_for(@user)
					sign_in(@user)
					sign_in @user, :bypass => true 
					redirect_to index_path
					# after_sign_in_path_for(@user)
				else
					sign_in(@user)
					sign_in @user, :bypass => true 
					redirect_to index_path
					# after_sign_in_path_for(@user)
				end
			else 
				render html: "<strong>Authentication Failed</strong>".html_safe
			end

		end
	end
end
