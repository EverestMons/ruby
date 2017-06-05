class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def create
    @song = Song.create(song_params)
    redirect_to root_path
  end

  def show
    @the_song = Add.where('song = ?', params[:id]).take
    puts @adds

    @song = Song.find(params[:id])

  #   @users_who_added = Add.where('song_id = ?', params[:id])
  #   @user = @users_who_added.pluck(:user)
  #   # @users = User.where('id = ?', user)
  #
  #   @adds = Add.where('song_id = ?', params[:id])
  #   @user_adds = @adds.pluck(:user_id)
  #   @user_adds.each do |user|
  #   @users = User.where('id = ?', user)
  #   @arr = []
  #   @arr.append(@users)
  #
  # end
  #   @users = @users.uniq
  #   puts @arr
  #   puts "$$$$$$$$$$$$$$$$$$$$$$$"


  end


  def song_params
    params.require(:song).permit(:title, :artist, :adds)
  end

end
