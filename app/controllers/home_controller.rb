class HomeController < ApplicationController
  def index
  end

  def about
  end

  def curri
  end

  def recruit
    @posts=Post.all
  end

  def applyindex
    @posts=Post.all
  end

  def applynew
  end

  def applycreate
    @post=Post.new
    @post.name=params[:name]
    @post.age=params[:age]
    @post.phonenumber=params[:phonenumber]
    @post.univ=params[:univ]

    @post.quiz1=params[:quiz1]
    @post.quiz2=params[:quiz2]
    @post.quiz3=params[:quiz3]
    @post.quiz4=params[:quiz4]
    @post.quiz5=params[:quiz5]
    @post.quiz6=params[:quiz6]

    @post.save

    redirect_to 'home/recruit'
  end

  def applyshow
    @post=Post.find(params[:post_id])
  end

  def applydestroy
    @post=Post.find(params[:post_id])
    @post.destroy

    redirect_to '/'
  end

end
