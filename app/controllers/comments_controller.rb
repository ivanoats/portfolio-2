class CommentsController < ApplicationController
  # We use a before_filter to find the @post.
  #
  before_filter :find_the_post

  # GET /posts/1/comments
  def index
    @comments = @post.comments
  end

  # GET /posts/1/comments/1
  def show
    @comment = @post.comments.find(params[:id])
  end

  # GET /posts/1/comments/new
  def new
    @comment = @post.comments.build
  end

  # GET /posts/1/comments/1/edit
  def edit
    @comment = @post.comments.find(params[:id])
  end

  # POST /posts/1/comments
  def create
    @comment = @post.comments.build(params[:comment])

    respond_to do |format|
      if @comment.save
        format.html { redirect_to [@post, @comment], notice: 'Comment was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /posts/1/comments/1
  def update
    @comment = @post.comments.find(params[:id])

    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        format.html { redirect_to [@post, @comment], notice: 'Comment was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /posts/1/comments/1
  def destroy
    @comment = @post.comments.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to post_comments_path(@post) }
    end
  end

  private
  def find_the_post
    @post = Post.find(params[:post_id])
  end
end
