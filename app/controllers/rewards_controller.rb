class RewardsController < ApplicationController
  
  before_filter :get_appeal
  
  def new
    @reward = Reward.new(:appeal => @appeal)

    respond_to do |format|
      format.html
    end
  end
  
  def edit
    @reward = Reward.find(params[:id])
  end

  def create
    @reward = Reward.new(params[:reward])

    respond_to do |format|
      if @reward.save
        format.html { redirect_to(@appeal, :notice => 'Reward was successfully created.') }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @reward.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @reward = Reward.find(params[:id])

    respond_to do |format|
      if @reward.update_attributes(params[:reward])
        format.html { redirect_to(@appeal, :notice => 'Reward was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @reward.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def get_appeal
    @appeal = Appeal.find(params[:appeal_id])
  end
  
end
