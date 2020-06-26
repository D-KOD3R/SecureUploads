class TinyUrlsController < ApplicationController

  def show
    @link = TinyUrl.find_by_slug(params[:slug])

    render file: "/public/404.html", layout: false, status: 404 if @link.nil?
  end

end
