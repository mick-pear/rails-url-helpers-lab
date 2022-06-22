class StudentsController < ApplicationController
  
    def index
        @students = Student.all
    end

    def show
        @student = Student.find(params[:id])
    end

    def activate
        @student = Student.find(params[:id])
        @student.active = !@student.active
        @student.save
        redirect_to students_path
    end
end