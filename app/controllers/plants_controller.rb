# class PlantsController < ApplicationController


#   def index
#     render json:  Plant.all , status: :ok
     
#   end

#   # def show
#   #   plant = Plant.find(:id params[:id])
#   #   render json: plant, status: :ok
#   # end 
#   def show
#     plant = Plant.find_by(id: params[:id])

#     if plant
#       render json: plant, status: :ok
#     else
#       render json: { error: 'Plant not found' }, status: :not_found
#     end
#   end 

#   def create
#     render json: Plant.create(plant_params), status: :created
#   end

#   def destroy
#     plant = Plant.find(params[:id])
#     plant.destroy
#     render json: { message: 'plant deleted' }, status: :no_content
#   end

# private

#   def plant_params
#     params.permit(:name, :image, :price)
#   end

# end


class PlantsController < ApplicationController


  def index
    render json: Plant.all , status: :ok
     
  end

  def show
    plant = Plant.find_by(id: params[:id])

    if plant
      render json: plant, status: :ok
    else
      render json: { error: 'Plant not found' }, status: :not_found
    end
  end 

  def create
    render json: Plant.create(plant_params), status: :created
  end

  def destroy
    plant = Plant.find_by(id: params[:id])
    plant.destroy
    render json: { message: 'plant deleted' }, status: :no_content
  end

private

  def plant_params
    params.permit(:name, :image, :price)
  end

end
