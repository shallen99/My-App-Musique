class SongsController < ApplicationController
    #Songs Routings

    ##get all songs
    get "/songs" do
        songs = Song.all
        songs.to_json()
     end

     ## get one song
    get "/songs/:id" do
        song = Song.find_by(id: params[:id])
        song.to_json()
    end
   ## post song
   post "/songs/" do
   p2 = Producer.create(
        producer_name: params[:producer_name],
    )
    a2 = Producer.create(
        producer_name: params[:producer_name],
    )

    song = Song.create(
        song_name: params[:song_name],
        artist_id: a2.id,
        producers_id: p2.id
    )

    song.save()
    {
        "message": "Song added successfully" ,

    }.to_json()
   end

   ##patch song
   patch "/songs/update/:id" do 
    song = Song.find_by(id: params[:id])

    song.update(
        song_name: params[:song_name],
        artist_id: params[:id],
        producers_id: params[:id]
    )
    song.to_json()
   end

    ##delete song
    delete "/songs/:id" do
    song = Song.find_by(id: params[:id])
    song.destroy
    {
        "message": "Deleted song successfully"

    }.to_json()
   end

end