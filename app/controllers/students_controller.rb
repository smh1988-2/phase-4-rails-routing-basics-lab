class StudentsController < ApplicationController

    def index
        data = Student.all
        render json: data
    end

    def grades
        data = Student.all.order("grade DESC")
        render json: data
    end

    def highest_grade
        data = Student.all.order("grade DESC").first
        render json: data
    end

end
