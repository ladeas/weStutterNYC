class RecapsController < ApplicationController
  before_action :set_recap, only: [:show, :edit, :update, :destroy]
  before_filter :require_admin!, only: [:new, :edit, :destroy]
  # i think what i did at the top is correct, i added new, and took out index. 

  # GET /recaps
  # GET /recaps.json
  def index
    @recaps = Recap.all
  end

  # GET /recaps/1
  # GET /recaps/1.json
  def show
  end

  # GET /recaps/new
  def new
    @recap = Recap.new
  end

  # GET /recaps/1/edit
  def edit
  end

  # POST /recaps
  # POST /recaps.json
  def create
    @recap = Recap.new(recap_params)

    respond_to do |format|
      if @recap.save
        format.html { redirect_to @recap, notice: 'Recap was successfully created.' }
        format.json { render action: 'show', status: :created, location: @recap }
      else
        format.html { render action: 'new' }
        format.json { render json: @recap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recaps/1
  # PATCH/PUT /recaps/1.json
  def update
    respond_to do |format|
      if @recap.update(recap_params)
        format.html { redirect_to @recap, notice: 'Recap was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @recap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recaps/1
  # DELETE /recaps/1.json
  def destroy
    @recap.destroy
    respond_to do |format|
      format.html { redirect_to recaps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recap
      @recap = Recap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recap_params
      params.require(:recap).permit(:title, :body, :user_id, :photo)
    end

# def original_url
#   base_url + original_fullpath
# end

    
end
