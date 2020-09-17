class SimploOrdersController < ApplicationController
  before_action :set_simplo_order, only: [:show, :edit, :update, :destroy]

  # GET /simplo_orders
  # GET /simplo_orders.json
  def index
    @simplo_orders = SimploOrder.all
  end

  # GET /simplo_orders/1
  # GET /simplo_orders/1.json
  def show
  end

  # GET /simplo_orders/new
  def new
    @simplo_order = SimploOrder.new
  end

  # GET /simplo_orders/1/edit
  def edit
  end

  # POST /simplo_orders
  # POST /simplo_orders.json
  def create
    @simplo_order = SimploOrder.new(simplo_order_params)

    respond_to do |format|
      if @simplo_order.save
        format.html { redirect_to @simplo_order, notice: 'Simplo order was successfully created.' }
        format.json { render :show, status: :created, location: @simplo_order }
      else
        format.html { render :new }
        format.json { render json: @simplo_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /simplo_orders/1
  # PATCH/PUT /simplo_orders/1.json
  def update
    respond_to do |format|
      if @simplo_order.update(simplo_order_params)
        format.html { redirect_to @simplo_order, notice: 'Simplo order was successfully updated.' }
        format.json { render :show, status: :ok, location: @simplo_order }
      else
        format.html { render :edit }
        format.json { render json: @simplo_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /simplo_orders/1
  # DELETE /simplo_orders/1.json
  def destroy
    @simplo_order.destroy
    respond_to do |format|
      format.html { redirect_to simplo_orders_url, notice: 'Simplo order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_simplo_order
      @simplo_order = SimploOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def simplo_order_params
      params.require(:simplo_order).permit(:order_id, :name, :order_date, :order_status, :telephone, :email)
    end
end
