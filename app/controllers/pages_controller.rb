class PagesController < ApplicationController
  layout 'application'

  def show
    @pages = Page.all
    @page = Page.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @page }
    end
  end
end
