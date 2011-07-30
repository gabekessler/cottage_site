class Admin::SlideshowImagesController < ApplicationController
  layout 'admin'
  # GET /admin/slideshow_images
  # GET /admin/slideshow_images.xml
  def index
    @slideshow_images = SlideshowImage.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @slideshow_images }
    end
  end

  # GET /admin/slideshow_images/1
  # GET /admin/slideshow_images/1.xml
  def show
    @slideshow_image = SlideshowImage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @slideshow_image }
    end
  end

  # GET /admin/slideshow_images/new
  # GET /admin/slideshow_images/new.xml
  def new
    @slideshow_image = SlideshowImage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @slideshow_image }
    end
  end

  # GET /admin/slideshow_images/1/edit
  def edit
    @slideshow_image = SlideshowImage.find(params[:id])
  end

  # POST /admin/slideshow_images
  # POST /admin/slideshow_images.xml
  def create
    @slideshow_image = SlideshowImage.new(params[:slideshow_image])

    respond_to do |format|
      if @slideshow_image.save
        format.html { redirect_to(@slideshow_image, :notice => 'Slideshow image was successfully created.') }
        format.xml  { render :xml => @slideshow_image, :status => :created, :location => @slideshow_image }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @slideshow_image.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/slideshow_images/1
  # PUT /admin/slideshow_images/1.xml
  def update
    @slideshow_image = SlideshowImage.find(params[:id])

    respond_to do |format|
      if @slideshow_image.update_attributes(params[:slideshow_image])
        format.html { redirect_to(@slideshow_image, :notice => 'Slideshow image was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @slideshow_image.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/slideshow_images/1
  # DELETE /admin/slideshow_images/1.xml
  def destroy
    @slideshow_image = SlideshowImage.find(params[:id])
    @slideshow_image.destroy

    respond_to do |format|
      format.html { redirect_to(slideshow_images_url) }
      format.xml  { head :ok }
    end
  end
end
