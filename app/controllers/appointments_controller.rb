class AppointmentsController < ApplicationController
    def index
        @appointments = Appointment.all 
    end
    
    def show
        @appointment = Appointment.find(params[:id])
    end

    def new
    end

    def create
    end

    private 

    def appointments_params
    end
end