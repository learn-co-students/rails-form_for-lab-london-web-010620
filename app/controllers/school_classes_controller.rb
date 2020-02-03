class SchoolClassesController< ActionController::Base

    def new
        @schoolclass = SchoolClass.new
    end
    def show
        @schoolclass = SchoolClass.find(params[:id])
    end
    def edit
        @schoolclass = SchoolClass.find(params[:id])  
    end
    def update
        @schoolclass = SchoolClass.find(params[:id])  
        @schoolclass.title = params[:school_class][:title]
        @schoolclass.room_number = params[:school_class][:room_number]
        @schoolclass.save
        redirect_to school_class_path(@schoolclass)
    end
    def create
        @schoolclass = SchoolClass.new
        @schoolclass.title = params[:school_class][:title]
        @schoolclass.room_number = params[:school_class][:room_number]
        @schoolclass.save
        redirect_to school_class_path(@schoolclass)
    end
end