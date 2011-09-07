class AppealsController < ApplicationController
  # GET /appeals
  # GET /appeals.xml
  def index
    @appeals = Appeal.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @appeals }
    end
  end

  # GET /appeals/1
  # GET /appeals/1.xml
  def show
    @appeal = Appeal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @appeal }
    end
  end

  # GET /appeals/new
  # GET /appeals/new.xml
  def new
    @appeal = Appeal.new
    @rewards = 3.times {@appeal.questions.build}
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @appeal }
    end
  end

  # GET /appeals/1/edit
  def edit
    @appeal = Appeal.find(params[:id])
    @rewards = @appeal.rewards
  end

  # POST /appeals
  # POST /appeals.xml
  def create
    @appeal = Appeal.new(params[:appeal])

    respond_to do |format|
      if @appeal.save
        format.html { redirect_to(@appeal, :notice => 'Appeal was successfully created.') }
        format.xml  { render :xml => @appeal, :status => :created, :location => @appeal }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @appeal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /appeals/1
  # PUT /appeals/1.xml
  def update
    @appeal = Appeal.find(params[:id])

    respond_to do |format|
      if @appeal.update_attributes(params[:appeal])
        format.html { redirect_to(@appeal, :notice => 'Appeal was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @appeal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /appeals/1
  # DELETE /appeals/1.xml
  def destroy
    @appeal = Appeal.find(params[:id])
    @appeal.destroy

    respond_to do |format|
      format.html { redirect_to(appeals_url) }
      format.xml  { head :ok }
    end
  end
end
