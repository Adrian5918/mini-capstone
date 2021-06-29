class UsersController < ApplicationController
  def create
      user = User.new(
        name: params[:name],
        email: params[:email],
        password: params[:password],
        password_confirmation: params[:password_confirmation]
      )
      if user.save
        render json: { message: "User created successfully" }, status: :created
      else
        render json: { errors: user.errors.full_messages }, status: :bad_request
      end
    end

    def index
      user = User.all
      render json: user.as_json
    end

    def update
      the_id = params[:id]
        user = User.find_by(id: the_id)
        user.name =  params[:input_name],
        #user.email = params[:input_email],
        #user.password = params[:input_password],
        user.save
      render json: user.as_json
    end
  end