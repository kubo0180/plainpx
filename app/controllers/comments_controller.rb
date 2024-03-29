class CommentsController < ApplicationController
  before_filter :load_px
  def load_px
    @px = Px.find(params[:px_id])
  end
 
  # GET /comments
  # GET /comments.json
  def index
    @comments = @px.comments.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comments }
    end
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
    @comment = @px.comments.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comment }
    end
  end

  # GET /comments/new
  # GET /comments/new.json
  def new
    @comment = @px.comments.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comment }
    end
  end

  # GET /comments/1/edit
  def edit
    @comment = @px.comments.find(params[:id])
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = @px.comments.build(params[:comment])

    respond_to do |format|
      if @comment.save
        format.html { redirect_to(@px, notice: 'Comment was successfully created.') }
        format.json { render json: @comment, status: :created, location: @comment }
      else
        format.html { render action: "new" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /comments/1
  # PUT /comments/1.json
  def update
    @comment = @px.comments.find(params[:id])

    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        format.html { redirect_to(@px, notice: 'Comment was successfully updated.') }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment = @px.comments.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to @px }
      format.json { head :no_content }
    end
  end
end
