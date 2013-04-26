class PxesController < ApplicationController
  # GET /pxes
  # GET /pxes.json
  def index
    @pxes = Px.all(:order => "updated_at DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pxes }
    end
  end

  # GET /pxes/1
  # GET /pxes/1.json
  def show
    @px = Px.find(params[:id])
    @comment = @px.comments.build

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @px }
    end
  end

  # GET /pxes/new
  # GET /pxes/new.json
  def new
    @px = Px.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @px }
    end
  end

  # GET /pxes/1/edit
  def edit
    @px = Px.find(params[:id])
  end

  # POST /pxes
  # POST /pxes.json
  def create
    @px = Px.new(params[:px])

    respond_to do |format|
      if @px.save
        format.html { redirect_to @px, notice: 'Px was successfully created.' }
        format.json { render json: @px, status: :created, location: @px }
      else
        format.html { render action: "new" }
        format.json { render json: @px.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pxes/1
  # PUT /pxes/1.json
  def update
    @px = Px.find(params[:id])

    respond_to do |format|
      if @px.update_attributes(params[:px])
        format.html { redirect_to @px, notice: 'Px was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @px.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pxes/1
  # DELETE /pxes/1.json
  def destroy
    @px = Px.find(params[:id])
    @px.destroy

    respond_to do |format|
      format.html { redirect_to pxes_url }
      format.json { head :no_content }
    end
  end
end
