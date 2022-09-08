class MissionsController < ApplicationController
    def index
        render json: Mission.all
    end

    def create
      mission = Mission.new(mission_params)
      if mission.save
        render json: mission, status: 201
      else
        render json: {error: "Not Created"}, status:401
      end
    end

    private

    def mission_params
        params.permit(:name, :scientist_id, :planet_id)
    end
end
