class MemonliesController < ApplicationController
  before_action :set_memonly, only: [:show, :edit, :update, :destroy]

  # GET /memonlies
  # GET /memonlies.json
  def index
    @memonlies = Memonly.all
    if user_signed_in?
      Memonly.all
    else
      redirect_to new_user_session_path
    end
    
  end

  # GET /memonlies/1
  # GET /memonlies/1.json
  def show
  end

  # GET /memonlies/new
  def new
    @memonly = Memonly.new
  end

  # GET /memonlies/1/edit
  def edit
  end

  # POST /memonlies
  # POST /memonlies.json
  def create
    @memonly = Memonly.new(memonly_params)
    @memonly.user = current_user
    @memonly.writer = current_user.name

    respond_to do |format|
      if @memonly.save
        format.html { redirect_to @memonly, notice: 'Memonly was successfully created.' }
        format.json { render :show, status: :created, location: @memonly }
      else
        format.html { render :new }
        format.json { render json: @memonly.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /memonlies/1
  # PATCH/PUT /memonlies/1.json
  def update
    respond_to do |format|
      if @memonly.update(memonly_params)
        format.html { redirect_to @memonly, notice: 'Memonly was successfully updated.' }
        format.json { render :show, status: :ok, location: @memonly }
      else
        format.html { render :edit }
        format.json { render json: @memonly.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /memonlies/1
  # DELETE /memonlies/1.json
  def destroy
    @memonly.destroy
    respond_to do |format|
      format.html { redirect_to memonlies_url, notice: 'Memonly was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_memonly
      @memonly = Memonly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def memonly_params
      params[:memonly][:writer] = current_user.name
      params.require(:memonly).permit(:title, :content, :writer, :date)
    end
end
