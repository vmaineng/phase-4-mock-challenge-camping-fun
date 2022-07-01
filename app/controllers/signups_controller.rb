class SignupsController < ApplicationController

def create
signup = Signup.create!(signup_params)
render json: signup.activity, status: :created
#signup belongs to an activity so we can call it
#belongs to will give you 7 methods
#has many will give you 11 methods
end


def destroy
signup = Signup.find_by(id: params[:id])
signup.destroy
head :no_content
end

private

def signup_params
    params.permit(:time, :camper_id, :activity_id)
end

    
end
