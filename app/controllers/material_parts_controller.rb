class MaterialPartsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    debugger
  @material = Material.find_by(color: params[:material_color])
  @material_part = MaterialPart.new(material_id: @material.id, product_id: params[:product_id], part_id: params[:part_id])
  @material_part.save
  render :nothing => true
end

private



end
