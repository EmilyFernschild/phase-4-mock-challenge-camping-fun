class SignupsController < ApplicationController

    def create 
        signup = Signup.create!(signup_params).activity
        render json: signup, status: :created
    end

    private 

    def signup_params
        params.permit(:time, :camper_id, :activity_id)
    end
end
