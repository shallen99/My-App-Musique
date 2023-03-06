class ArtistsController < ApplicationController
    # Artist Routings

    ## get all artists
    get "/artists" do
        artists = Artist.all
        artists.to_json()
     end

     ## get one artist
    get "/artists/:id" do
        artist = Artist.find_by(id: params[:id])
        artist.to_json()
    end

   ## post artist
   

   post "/artists/" do
    p2 = Producer.create(
        producer_name: params[:producer_name],
    ) 
    artist = Artist.create(
        artist_name: params[:artist_name],
        song_name: params[:song_name],
        genre: params[:genre],
        producers_id: p2.id

    )

    artist.save()
    {
        "message": "Your artist has been added",

    }.to_json()
   end

   ##patch artist
   patch "/artists/update/:id" do 
    artist = Artist.find_by(id: params[:id])

    artist.update(
        artist_name: params[:artist_name],
        song_name: params[:song_name],
        genre: params[:genre]
    )
    artist.to_json()
   end

   ##delete artist
    delete "/artists/:id" do
    artist = Artist.find_by(id: params[:id])
    artist.destroy
    {
        "message": "Successfully deleted artist"

   }.to_json()
   end

end