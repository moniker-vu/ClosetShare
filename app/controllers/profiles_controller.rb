class ProfilesController < ApplicationController

def index
	@profile = Profile.all
	#default action
	#big list of profiles on the webpage
	#where we list things
	#homepage
end

def show
	@profile = Profile.find(params[:id])
	#list of items - it will show the details of a specific item
end

def new
	@profile = Profile.create(params[:user_id])
	#put in a form(user input) onto web page
	#once submit is clicked- it passes forward to 'create' action
end

def profile_params
	params.require(:profile).permit(:first_name, :last_name, :about)
end


def create
	@profile = current_user.profile.build(filtered_params)
	if @profile.save
		redirect_to profile_path(current_user.profile) if current_user.profile 
	else
		render "new"
	end
	#figure out what paramaters are allowed in our database 
	#mass assignment, which is something that we can assign multiple values all in one go
	#does something with the form
	#will reate a record and create a redirection back to the index(usually)
end

def edit
	@profile = Profile.find(params[:id])
	#takes an argument of a specific record you want to edit
	#populates the form and passes it to update
end

def update
	@profile = Profile.find(params[:id])

	if @profile.update_attributes(profile_params)
		redirect_to profile_path(current_user.profile) if current_user.profile
	else
		render "edit"
	end
	#seeks out record from database, updates fields and saves it and redirects back to a page
end

def destroy
	@profile = Profile.find(params[:id])
	@profile.destroy
	redirect_to closetshare_homepage_path
	#jpass it an id of an object and it will delte hte object 
	#redirects back to index, or whereever
end

#if we have another function we wanna make - we put it in helpers file
#then we can use those functions in out controllers
end

private
def filtered_params
	params.require(:profile).permit(:user_id)
end

