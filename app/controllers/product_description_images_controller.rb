class ProductDescriptionImagesController < ApplicationController
  before_action :set_product_description_image, only: [:show, :edit, :update, :destroy]

  # GET /product_description_images
  # GET /product_description_images.json
  def index
    @product_description_images = ProductDescriptionImage.all
  end

  # GET /product_description_images/1
  # GET /product_description_images/1.json
  def show
  end

  # GET /product_description_images/new
  def new
    @product_description_image = ProductDescriptionImage.new
  end

  # GET /product_description_images/1/edit
  def edit
  end

  # POST /product_description_images
  # POST /product_description_images.json
  def create
    @product_description_image = ProductDescriptionImage.new(product_description_image_params)

    respond_to do |format|
      if @product_description_image.save
        format.html { redirect_to @product_description_image, notice: 'Product description image was successfully created.' }
        format.json { render :show, status: :created, location: @product_description_image }
      else
        format.html { render :new }
        format.json { render json: @product_description_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_description_images/1
  # PATCH/PUT /product_description_images/1.json
  def update
    respond_to do |format|
      if @product_description_image.update(product_description_image_params)
        format.html { redirect_to @product_description_image, notice: 'Product description image was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_description_image }
      else
        format.html { render :edit }
        format.json { render json: @product_description_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_description_images/1
  # DELETE /product_description_images/1.json
  def destroy
    @product_description_image.destroy
    respond_to do |format|
      format.html { redirect_to product_description_images_url, notice: 'Product description image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_description_image
      @product_description_image = ProductDescriptionImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_description_image_params
      params.require(:product_description_image).permit(:product_id, :image)
    end
end
