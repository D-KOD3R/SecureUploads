class SecureFilesController < ApplicationController
  before_action :authenticate_user!

  def index
    @secure_files = current_user.secure_files.all
  end

  def new
    @secure_file = current_user.secure_files.new
  end

  def create
    @secure_file = current_user.secure_files.new(secure_file_params)

    if @secure_file.save
      redirect_to secure_files_path, notice: "Successfully uploaded."
    else
      render "new"
    end

  end

  def destroy
    @secure_file = current_user.secure_files.find(params[:id])
    @secure_file.destroy
    redirect_to secure_files_path, notice:  "Successfully deleted."
  end

  private
  def secure_file_params
    params.require(:secure_file).permit(:name, :attachment)
  end
end
