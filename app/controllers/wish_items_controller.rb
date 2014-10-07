class WishItemsController < ApplicationController
  before_action :set_wish_item, only: [:show, :edit, :update, :destroy]

  # GET /wish_items
  # GET /wish_items.json
  def index
    @wish_items = WishItem.all
  end

  # GET /wish_items/1
  # GET /wish_items/1.json
  def show
  end

  # GET /wish_items/new
  def new
    @wish_item = WishItem.new
  end

  # GET /wish_items/1/edit
  def edit
  end

  # POST /wish_items
  # POST /wish_items.json
  def create
    @wish_item = WishItem.new(wish_item_params)

    respond_to do |format|
      if @wish_item.save
        format.html { redirect_to @wish_item, notice: 'Wish item was successfully created.' }
        format.json { render :show, status: :created, location: @wish_item }
      else
        format.html { render :new }
        format.json { render json: @wish_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wish_items/1
  # PATCH/PUT /wish_items/1.json
  def update
    respond_to do |format|
      if @wish_item.update(wish_item_params)
        format.html { redirect_to @wish_item, notice: 'Wish item was successfully updated.' }
        format.json { render :show, status: :ok, location: @wish_item }
      else
        format.html { render :edit }
        format.json { render json: @wish_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wish_items/1
  # DELETE /wish_items/1.json
  def destroy
    @wish_item.destroy
    respond_to do |format|
      format.html { redirect_to wish_items_url, notice: 'Wish item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wish_item
      @wish_item = WishItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wish_item_params
      params[:wish_item]
    end
end
