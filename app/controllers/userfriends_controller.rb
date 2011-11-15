class UserfriendsController < ApplicationController
  # GET /userfriends
  # GET /userfriends.json
  def index
    @userfriends = Userfriend.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @userfriends }
    end
  end

  # GET /userfriends/1
  # GET /userfriends/1.json
  def show
    @userfriend = Userfriend.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @userfriend }
    end
  end

  # GET /userfriends/new
  # GET /userfriends/new.json
  def new
    @userfriend = Userfriend.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @userfriend }
    end
  end

  # GET /userfriends/1/edit
  def edit
    @userfriend = Userfriend.find(params[:id])
  end

  # POST /userfriends
  # POST /userfriends.json
  def create
    @userfriend = Userfriend.new(params[:userfriend])

    respond_to do |format|
      if @userfriend.save
        format.html { redirect_to @userfriend, notice: 'Userfriend was successfully created.' }
        format.json { render json: @userfriend, status: :created, location: @userfriend }
      else
        format.html { render action: "new" }
        format.json { render json: @userfriend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /userfriends/1
  # PUT /userfriends/1.json
  def update
    @userfriend = Userfriend.find(params[:id])

    respond_to do |format|
      if @userfriend.update_attributes(params[:userfriend])
        format.html { redirect_to @userfriend, notice: 'Userfriend was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @userfriend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userfriends/1
  # DELETE /userfriends/1.json
  def destroy
    @userfriend = Userfriend.find(params[:id])
    @userfriend.destroy

    respond_to do |format|
      format.html { redirect_to userfriends_url }
      format.json { head :ok }
    end
  end
end
