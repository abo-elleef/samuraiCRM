module Samurai
	module Admin
		class UsersController < ApplicationController
			def index
				@users = Samurai::User.all
			end
		end
	end
end