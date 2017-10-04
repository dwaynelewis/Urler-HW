class UrlsController < ApplicationController
  def new
  end

  def create
    params["url"]["url"]
    @url = Url.new
    Url.create(url: params["url"]["url"])
    redirect_to '/index'
  end

  def index
    @urls = Url.all
  end

  def substitute
    id = params["id"].to_i
    obj = Url.find(id)
    
    redirect_to obj.url
  end

end
