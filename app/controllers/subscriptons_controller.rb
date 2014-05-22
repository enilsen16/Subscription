class SubscriptonsController < ApplicationController
  before_action :set_subscripton, only: [:show, :edit, :update, :destroy]

  # GET /subscriptons
  # GET /subscriptons.json
  def index
    @subscriptons = Subscripton.all
  end

  # GET /subscriptons/1
  # GET /subscriptons/1.json
  def show
  end

  # GET /subscriptons/new
  def new
    @subscripton = Subscripton.new
  end

  # GET /subscriptons/1/edit
  def edit
  end

  # POST /subscriptons
  # POST /subscriptons.json
  def create
    @subscripton = Subscripton.new(subscripton_params)

    respond_to do |format|
      if @subscripton.save
        format.html { redirect_to @subscripton, notice: 'Subscripton was successfully created.' }
        format.json { render :show, status: :created, location: @subscripton }
      else
        format.html { render :new }
        format.json { render json: @subscripton.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subscriptons/1
  # PATCH/PUT /subscriptons/1.json
  def update
    respond_to do |format|
      if @subscripton.update(subscripton_params)
        format.html { redirect_to @subscripton, notice: 'Subscripton was successfully updated.' }
        format.json { render :show, status: :ok, location: @subscripton }
      else
        format.html { render :edit }
        format.json { render json: @subscripton.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subscriptons/1
  # DELETE /subscriptons/1.json
  def destroy
    @subscripton.destroy
    respond_to do |format|
      format.html { redirect_to subscriptons_url, notice: 'Subscripton was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subscripton
      @subscripton = Subscripton.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subscripton_params
      params.require(:subscripton).permit(:book_id, :subscriber_id, :length)
    end
end
