class AddsController < ApplicationController

def add_song
  @user = User.find(session[:user_id])
  @song = Song.find(params[:id])
# increasing user adds
  @query = Add.where('song_id = ?', @song.id)
  @add_id = @query.pluck(:id)
  @number = Add.find(@add_id)
  @record = @number[0]
  @the = @number.pluck(:number)
  @new = @the[0]
  @record.update(number:@new += 1)

  @song_add = Add.new(user:@user, song:@song, number: 1)
  @song_add.save
  @number_of_song_adds = Add.find(@song_add.id)
  @number_of_song_adds.update(number: @number_of_song_adds.number +=1)
  puts @number_of_song_adds.number


# increasing song adds

  @song_in_question = Song.find(@song.id)
  puts @song_in_question.adds
  @song_in_question.update(adds: @song_in_question.adds += 1)
  redirect_to root_path 
end



end
