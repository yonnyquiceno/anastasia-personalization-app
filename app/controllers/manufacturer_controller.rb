#:nodoc:
class ManufacturerController < ApplicationController
  def index
    @manufacturers = Manufacturer.all
    flash[:error] = 'No manufacturer registered' if @manufacturers.empty?
  end

  def show
  end

  def new
    @manufacturer = Manufacturer.new
  end

  def create
    @manufacturer = Manufacturer.new(manufacturer_params)
    if @manufacturer.save
      flash[:success] = 'manufacturer registered succssfully.'
      redirect_to manufacturer_index_path
    else
      flash[:error] = @manufacturer.errors.full_messages.join(',')
      render 'new'
    end
  end

  def manufacturer_params
    params.require(:manufacturer).permit(:first_name, :last_name,
                                         :email, :photo, :description)
  end
  private :manufacturer_params
end
