class LinkctrsController < ApplicationController
  before_action :set_linkctr, only: [:show, :edit, :update, :destroy]

  # GET /linkctrs
  # GET /linkctrs.json
  def index
    @linkctrs = Linkctr.all
  end

  # GET /linkctrs/1
  # GET /linkctrs/1.json
  def show
  end

  # GET /linkctrs/new
  def new
    @linkctr = Linkctr.new
  end

  # GET /linkctrs/1/edit
  def edit
  end

  # POST /linkctrs
  # POST /linkctrs.json
  def create
    @linkctr = Linkctr.new(linkctr_params)

    respond_to do |format|
      if @linkctr.save
        format.html { redirect_to @linkctr, notice: 'Linkctr was successfully created.' }
        format.json { render action: 'show', status: :created, location: @linkctr }
      else
        format.html { render action: 'new' }
        format.json { render json: @linkctr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /linkctrs/1
  # PATCH/PUT /linkctrs/1.json
  def update
    respond_to do |format|
      if @linkctr.update(linkctr_params)
        format.html { redirect_to @linkctr, notice: 'Linkctr was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @linkctr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /linkctrs/1
  # DELETE /linkctrs/1.json
  def destroy
    @linkctr.destroy
    respond_to do |format|
      format.html { redirect_to linkctrs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_linkctr
      @linkctr = Linkctr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def linkctr_params
      params.require(:linkctr).permit(:name, :urlLink, :detail)
    end
end
