class UsercommentsController < ApplicationController
  # GET /usercomments
  # GET /usercomments.json
  def index
    @usercomments = Usercomment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @usercomments }
    end
  end

  # GET /usercomments/1
  # GET /usercomments/1.json
  def show
    @usercomment = Usercomment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @usercomment }
    end
  end

  # GET /usercomments/new
  # GET /usercomments/new.json
  def new
    @usercomment = Usercomment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @usercomment }
    end
  end

  # GET /usercomments/1/edit
  def edit
    @usercomment = Usercomment.find(params[:id])
  end

  # POST /usercomments
  # POST /usercomments.json
  def create
    @usercomment = Usercomment.new(params[:usercomment])

    respond_to do |format|
      if @usercomment.save
        format.html { redirect_to @usercomment, :notice => 'Usercomment was successfully created.' }
        format.json { render :json => @usercomment, :status => :created, :location => @usercomment }
      else
        format.html { render :action => "new" }
        format.json { render :json => @usercomment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /usercomments/1
  # PUT /usercomments/1.json
  def update
    @usercomment = Usercomment.find(params[:id])

    respond_to do |format|
      if @usercomment.update_attributes(params[:usercomment])
        format.html { redirect_to @usercomment, :notice => 'Usercomment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @usercomment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /usercomments/1
  # DELETE /usercomments/1.json
  def destroy
    @usercomment = Usercomment.find(params[:id])
    @usercomment.destroy

    respond_to do |format|
      format.html { redirect_to usercomments_url }
      format.json { head :no_content }
    end
  end
end
