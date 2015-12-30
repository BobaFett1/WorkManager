class WorkStepsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_work_step, only: [:show, :edit, :update, :destroy]

  # GET /work_steps
  # GET /work_steps.json
  def index
    @work_steps = WorkStep.all
  end

  # GET /work_steps/1
  # GET /work_steps/1.json
  def show
  end

  # GET /work_steps/new
  def new
    @work_step = WorkStep.new
  end

  # GET /work_steps/1/edit
  def edit
  end

  # POST /work_steps
  # POST /work_steps.json
  def create
    @work_step = WorkStep.new(work_step_params)

    respond_to do |format|
      if @work_step.save
        format.html { redirect_to @work_step, notice: 'Work step was successfully created.' }
        format.json { render :show, status: :created, location: @work_step }
      else
        format.html { render :new }
        format.json { render json: @work_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work_steps/1
  # PATCH/PUT /work_steps/1.json
  def update
    respond_to do |format|
      if @work_step.update(work_step_params)
        format.html { redirect_to @work_step, notice: 'Work step was successfully updated.' }
        format.json { render :show, status: :ok, location: @work_step }
      else
        format.html { render :edit }
        format.json { render json: @work_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_steps/1
  # DELETE /work_steps/1.json
  def destroy
    @work_step.destroy
    respond_to do |format|
      format.html { redirect_to work_steps_url, notice: 'Work step was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_step
      @work_step = WorkStep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_step_params
      params.require(:work_step).permit(:DisplayName, :Description, :AllowQuantityInput)
    end
end
