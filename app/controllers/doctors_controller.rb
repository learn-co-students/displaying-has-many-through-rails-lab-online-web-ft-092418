class DoctorsController < ApplicationController
    def index
        @doctors = Doctor.all
    end
    
    def show
        @doctor = Doctor.find(params[:id])
    end

    def new
    end

    def create
    end

    private 

    def doctors_params
    end
end