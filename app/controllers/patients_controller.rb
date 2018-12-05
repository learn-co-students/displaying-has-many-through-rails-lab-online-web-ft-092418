class PatientsController < ApplicationController

    before_action :set_patient!, only: [:show, :edit, :update, :destroy]

    def index
        @patients = Patient.all
    end
    
    def show
    end
    
    def new
        @patient = Patient.new
    end
    
    def create
        @patient = Patient.new(patient_params)
            
        if @patient.save
        redirect_to patient_path(@patient)
        else
        render :new
        end
    end
    
    def edit
    end
    
    def update
    
        @patient.update(patient_params)
    
        if @patient.save
        redirect_to patient_path(@patient)
        else
        render :edit
        end
    end
    
    def destroy
        @patient.destroy
        flash[:notice] = "patient deleted."
        redirect_to patients_path
    end
    
    private
    
    def patient_params
        params.require(:patient).permit(:name, :department)
    end
    
    def set_patient!
        @patient = Patient.find_by_id(params[:id])
    end
    
    
end
