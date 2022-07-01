class ActivitiesController < ApplicationController

def index
    render json: Activity.all
end


def destroy
    Activity.find(params[:id]).destroy
    head :no_content
# activity = Activity.find_by(id: params[:id])
# activity.destroy
# head :no_content
end

end


#since we do not need to do patch, we do not need the helper function
#therefore, we can just look for one activity