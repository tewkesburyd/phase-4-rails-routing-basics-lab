class StudentsController < ApplicationController

    def index
        s = Student.all
        render json: s
    end

    def grades 
        s = Student.order(grade: :desc)
        render json: s
    end

    def highest_grade
        highest = Student.order(:grade).last
        render json: highest
    end

end
