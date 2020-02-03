class SchoolClass < ActiveRecord::Base
    def show
        @schoolclass = SchoolClass.find(params[:id])
    end
    def create
        @schoolclass = SchoolClass.new
        @schoolclass.title = params[:title]
        @schoolclass.room_number = params[:room_number]
    end
end