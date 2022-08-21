class BidProductsController < ApplicationController
  before_action :set_bid_product, only: %i[ show edit update destroy ]

  # GET /bid_products or /bid_products.json
  def index
    @bid_products = BidProduct.all
  end

  # GET /bid_products/1 or /bid_products/1.json
  def show
  end

  # GET /bid_products/new
  def new
    @bid_product = BidProduct.new()
    @bid_id = params[:bid_id]
  end

  # GET /bid_products/1/edit
  def edit
  end

  # POST /bid_products or /bid_products.json
  def create
    @bid_product = BidProduct.new(bid_product_params)

    respond_to do |format|
      if @bid_product.save
        format.html { redirect_to bid_product_url(@bid_product), notice: "Bid product was successfully created." }
        format.json { render :show => "bids/show", status: :created, location: @bid_product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bid_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bid_products/1 or /bid_products/1.json
  def update
    respond_to do |format|
      if @bid_product.update(bid_product_params)
        format.html { redirect_to bid_product_url(@bid_product), notice: "Bid product was successfully updated." }
        format.json { render :show, status: :ok, location: @bid_product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bid_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bid_products/1 or /bid_products/1.json
  def destroy
    @bid_product.destroy

    respond_to do |format|
      format.html { redirect_to bid_products_url, notice: "Bid product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bid_product
      @bid_product = BidProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bid_product_params
      params.require(:bid_product).permit(:bid_id, :product_id, :unit_id, :quantity)
    end
end
