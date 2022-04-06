class StudentsController < ApplicationController
    def index
        all_students = Student.all
        render json: all_students
    end
        def grades
            ordered_students = Student.all.order(grade: :desc)
            render json: ordered_students
        end

        def highest_grade
            student = Student.order(grade: :desc).first
            render json: student
        end
    
end
