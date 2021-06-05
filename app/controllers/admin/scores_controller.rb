class Admin::ScoresController < AdminController
  before_action :set_user_and_document

  def get_document
  end

  def update_document
    if @document.update(document_params)
      flash[:notice] = "Score updated successfully"
      redirect_to admin_dashboard_index_path
    else
      flash[:alert] = @document.errors.full_messages.to_sentence
      render :get_document
    end
  end

  private

  def document_params
    params.require(:document).permit(:score)
  end

  def set_user_and_document
    @user = User.find(params[:id])
    @document = Document.find_or_initialize_by(user_id: @user.id, name: @user.name)
  end
end
