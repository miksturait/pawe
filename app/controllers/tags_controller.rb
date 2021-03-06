class TagsController < ApplicationController
  def index
      @tags=Tag.all
  end

  def show
      @tag=Tag.find(params[:id])
      @posts = @tag.posts
  end

 
  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to '/tags'
  end

  def new
    @tag = Tag.new
  end

  def edit
    @tag = Tag.find(params[:id])
  end

  def update
    @tag =Tag.find(params[:id])
    if @tag.update_attributes(tag_params)
      redirect_to(:action => 'show', :id => @tag.id)
    else
      render 'edit'
    end
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
       redirect_to '/tags'
    else
      render 'new'
    end

  end


private

    def tag_params 
        params.require(:tag).permit(:title)
    end
    
    def strippedtags(content)
      tagi = %w(a acronym b strong i em li ul ol h1 h2 h3 h4 h5 h6 blockquote u img br cite sub sup ins p)
      sanitize(content, tags: tagi, attributes: %w(href title))
    end
    
end
