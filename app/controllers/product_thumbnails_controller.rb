class ProductThumbnailsController < ApplicationController
  before_action :set_product_thumbnail, only: [:show, :edit, :update, :destroy]

  # GET /product_thumbnails
  # GET /product_thumbnails.json
  def index
    @product_thumbnails = ProductThumbnail.all
  end

  # GET /product_thumbnails/1
  # GET /product_thumbnails/1.json
  def show
  end

  # GET /product_thumbnails/new
  def new
    @product_thumbnail = ProductThumbnail.new
  end

  # GET /product_thumbnails/1/edit
  def edit
  end

  # POST /product_thumbnails
  # POST /product_thumbnails.json
  def create
    @product_thumbnail = ProductThumbnail.new(product_thumbnail_params)

    respond_to do |format|
      if @product_thumbnail.save
        format.html { redirect_to @product_thumbnail, notice: 'Product thumbnail was successfully created.' }
        format.json { render :show, status: :created, location: @product_thumbnail }
      else
        format.html { render :new }
        format.json { render json: @product_thumbnail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_thumbnails/1
  # PATCH/PUT /product_thumbnails/1.json
  def update
    respond_to do |format|
      if @product_thumbnail.update(product_thumbnail_params)
        format.html { redirect_to @product_thumbnail, notice: 'Product thumbnail was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_thumbnail }
      else
        format.html { render :edit }
        format.json { render json: @product_thumbnail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_thumbnails/1
  # DELETE /product_thumbnails/1.json
  def destroy
    @product_thumbnail.destroy
    respond_to do |format|
      format.html { redirect_to product_thumbnails_url, notice: 'Product thumbnail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_thumbnail
      @product_thumbnail = ProductThumbnail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_thumbnail_params
      params.require(:product_thumbnail).permit(:product_id, :image)
    end
end
