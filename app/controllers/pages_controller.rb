class PagesController < ApplicationController
  layout 'application'
  before_filter :show

  def home
  end
  
  def about
  end
  
  def services
    @services = Service.all
  end
  
  def locations
  end
  
  def contact
  end
  
  def show
    @pages = Page.all
    @page = Page.find(params[:id])
    render @page.cached_slug
  end
end
