class User::DashboardController < UserController

  def index
    @document = current_user.document
    if @document
      respond_to do |format|
        format.html
        format.pdf do
            render pdf: "Document for #{current_user.name}",
            page_size: 'A4',
            template: "user/documents/show.haml",
            layout: "document.html.haml"
        end
      end
    end
  end

end
