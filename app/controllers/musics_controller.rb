class MusicsController < ApplicationController

  def index
    @musics = Music.all
    @music = Music.new
  end

  def create
  end

  def show
    @music = Music.find(params[:id])
    @comment = Comment.new
  end

  def edit
  end

  def update
    if @music.update(music_params)
      redirect_to music_path(@music.id), notice: 'successfully'
    else
      render action: :edit
    end
  end

  def destroy
    @music.destroy
    redirect_to musics_path
  end

 private
  def music_params
    params.require(:music).permit(:title, :body, :evaluation)
  end

end