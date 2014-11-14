class TicketsController < ApplicationController
  def index
    @ticket = Ticket.all
  end

   def new
    @ticket = Ticket.new
  end

  # def create
  #   @ticket = Ticket.new(params.require(:ticket).permit([:title, :body]))
  #   if @ticket.save
  #     redirect_to @ticket
  #   else
  #     render :new
  #   end
  # end

    def create
    @ticket = Ticket.new(params.require(:ticket).permit([:email, :name, :title, :body, :resolved]))
    if @ticket.save
      redirect_to tickets_path, notice: "Support Request Saved"
    else
      render :new
    end
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  def edit
    @ticket = Ticket.find(params[:id])
  end

  # def update
  #   @ticket = Ticket.find(params[:id])
  #   if @ticket.update_attributes(params.require(:ticket).permit([:email, :name, :title, :body, :resolved]))
  #     redirect_to @ticket
  #   else
  #     render :edit
  #   end
  # end

  def update
    @ticket = Ticket.find(params[:id])
    if @ticket.update_attributes(params.require(:ticket).permit([:email, :name, :title, :body, :resolved]))
      redirect_to tickets_path
    else
      render :edit
    end
  end



  def destroy
  @ticket = Ticket.find(params[:id])
  @ticket.destroy

  redirect_to tickets_path
end



end
