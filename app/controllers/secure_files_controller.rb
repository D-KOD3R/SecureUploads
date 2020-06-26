class SecureFilesController < ApplicationController
  before_action :authenticate_user!
  before_action :check_authorization, only: [:create, :new]

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

  def check_authorization
    redirect_to secure_files_path, notice: "Not allowed to perform this action, kindly ask admin to verify your account." unless current_user.is_verified?
  end

end
