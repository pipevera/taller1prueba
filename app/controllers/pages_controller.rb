class PagesController < ApplicationController
  def landing
  	@users = User.all
  end
  	def save_user
  		if params[:name].present? && params[:email].present? && params[:age].present?
  		User.create(name: params[:name], email: params[:email], age: params[:age])
  		redirect_to root_path, notice: "el usuario ha sido creado"
  			else 
  		redirect_to root_path, alert: "todos los campos son obligatorios"
  			end
  		end
	end
