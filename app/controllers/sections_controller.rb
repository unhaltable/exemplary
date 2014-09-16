class SectionsController < ApplicationController
  before_action :set_section, only: [:show, :edit, :update, :destroy]

  load_and_authorize_resource :document
  load_and_authorize_resource :selection, through: :document

  # GET /sections
  # GET /sections.json
  def index
    @sections = Section.all
  end

  # GET /sections/1
  # GET /sections/1.json
  def show
    @section.comments.each do |c|
      c.score = c.comment_score
      c.save
    end
  end

  # GET /sections/new
  def new
    @section = Section.new
  end

  # GET /sections/1/edit
  def edit
  end

  # POST /sections
  # POST /sections.json
  def create
    @section = Section.new(section_params.merge!({ document: Document.find(params[:document_id]) }))

    respond_to do |format|
      if @section.save
        format.html { redirect_to @section, notice: 'Section was successfully created.' }
        format.json { render :show, status: :created, location: @section }
      else
        format.html { render :new }
        format.json { render json: @section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sections/1
  # PATCH/PUT /sections/1.json
  def update
    respond_to do |format|
      if @section.update(section_params)
        format.html { redirect_to @section, notice: 'Section was successfully updated.' }
        format.json { render :show, status: :ok, location: @section }
      else
        format.html { render :edit }
        format.json { render json: @section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sections/1
  # DELETE /sections/1.json
  def destroy
    @section.destroy
    respond_to do |format|
      format.html { redirect_to sections_url, notice: 'Section was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def comment
    @section = Section.find(params[:id])
    @comment = Comment.new(comment_params)
    @section.comments << @comment
    @comment.save
    redirect_to section_url(@section)
  end

  def vote
    par = vote_params
    @comment = Comment.find(par[:id])
    @section = @comment.section

    #for vote in @comment.votes do
    #  if vote.user.id == current_user.id
    #    redirect_to section_url(@comment.section)
    #    return
    #  end
    #end

    @vote = Vote.new(comment_id: par[:id], user_id: current_user.id, vote: par[:bool])
    @comment.votes << @vote
    current_user.votes << @vote
    @vote.save
    #redirect_to section_url(@comment.section)
    render 'js_comments'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_section
      @section = Section.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def section_params
      params.require(:section)
    end

    def comment_params
      params.require(:comment).permit(:content)
    end

    def vote_params
      params.require(:vote).permit(:bool, :id)
    end
end
