class VariantsController < ApplicationController
  def new
    @variant = Variant.new
  end
  def create
    # @car = Car.find(params[:car_id])
    @variant = Variant.create(variant_params)

    # if @variant.save
    #   redirect_to car_path(@car)
    # else
    #   render :new, status: :unprocessable_entity
    # end
  end

  # def edit
  #   @variant = Variant.find(params[:id])
  # end

  # def update
  #   @variant = Variant.find(params[:id])

  #   if @variant.update(variant_params)
  #     redirect_to @variant
  #   else
  #     render :edit, status: :unprocessable_entity
  #   end
  # end

  private

  def variant_params
    params.require(:variant).permit(:name, :price, :car_id)
  end
end
