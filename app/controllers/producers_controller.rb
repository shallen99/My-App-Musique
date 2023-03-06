class ProducersController < ApplicationController
    #Producers Routings

    ## get all producers
    get "/producers" do
        producers = Producer.all
        producers.to_json()
     end

     ## get one producer
    get "/producers/:id" do
        producer = Producer.find_by(id: params[:id])
        producer.to_json()
    end
    ## post producer
    post "/producers/" do
        p2 = Producer.create(
            producer_name: params[:producer_name],
        )
     producer = Producer.create(
        producer_name: params[:producer_name],
        song_name: params[:song_name],
        producers_id: p2.id
    )

    producer.save()
    {
        "message": "Successfully added",

    }.to_json()
   end

   ##patch producer
   patch "/producers/update/:id" do 
    producer = Producer.find_by(id: params[:id])

    producer.update(
        producer_name: params[:producer_name],
        song_name: params[:song_name],
    )
    producer.to_json()
   end

    ##delete producer
    delete "/producers/:id" do
    producer = Producer.find_by(id: params[:id])
    producer.destroy
    {
        "message": "Successfully deleted"

    }.to_json()
   end

end