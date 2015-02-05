class Cpanel::ResumesController < Cpanel::ApplicationController
  before_action :set_resume, only: [:show, :edit, :update, :destroy]
  # before_action :set_position, only: [:create]

  respond_to :html

  def index
    @cpanel_resumes = Resume.all
    respond_with(@cpanel_resumes)
  end

  def show
    respond_with(@cpanel_resume)
  end

  def new
    @cpanel_resume = Resume.new
    respond_with(@cpanel_resume)
  end

  def edit
  end

  # def create
  #   @cpanel_resume = Resume.new(resume_params)
  #   @cpanel_resume[:position_id] = @position.id

  #   if @cpanel_resume.save
  #     flash[:notice] = 'Resume was successfully created.'
  #     Notifier.resume_received(@cpanel_resume).deliver 
  #   end
    
  #   respond_with(@cpanel_resume)
  # end

  def update
    @cpanel_resume.update(resume_params)
    respond_with(@cpanel_resume)
  end

  def destroy
    @cpanel_resume.destroy
    # respond_with(@cpanel_resume)
    redirect_to '/cpanel/resumes'
  end

  private
    def set_resume
      @cpanel_resume = Resume.find(params[:id])      
      # @position = Position.find(params[:position_id])
    end

    # def set_position
    #   @position = Position.find(params[:position_id])
    # end

    def resume_params
      params.require(:resume).permit(:name, :phone, :email, :avatar, :content)
    end
end
