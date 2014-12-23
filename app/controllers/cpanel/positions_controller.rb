class Cpanel::PositionsController < Cpanel::ApplicationController
  before_action :set_cpanel_position, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @cpanel_positions = Position.all
    respond_with(@cpanel_positions)
  end

  def show
    respond_with(@cpanel_position)
  end

  def new
    @cpanel_position = Position.new
    respond_with(@cpanel_position)
  end

  def edit
  end

  def create
    @cpanel_position = Position.new(cpanel_position_params)
    @cpanel_position.save
  respond_with([:cpanel, @cpanel_position])
  end

  def update
    @cpanel_position.update(cpanel_position_params)
    respond_with(@cpanel_position)
  end

  def destroy
    @cpanel_position.destroy
    respond_with(@cpanel_position)
  end

  private
    def set_cpanel_position
      @cpanel_position = Position.find(params[:id])
    end

    def cpanel_position_params
      params.require(:position).permit(:title, :content, :status)
    end
end