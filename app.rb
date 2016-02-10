class RestfulControllerApp < Sinatra::Base

  # INDEX - like index.html, a list of music
  # GET "/music" - Gets all the music we have
  get "/music" do
    @music = ["Tame Impala", "Wu-Tang Clan", "The Smiths", "A Tribe Called Quest"]
    erb :'index'
  end

  # NEW - a page that gives us a form to make a new book
  # GET "/music/new" - Give us a form to fill out details of a new book
  get "/music/new" do
    # some code here
  end

  # CREATE - where the new form POSTs to, it does the actual creating
  # POST "/music" - Create a new book, add it to our list
  post "/music" do

  end
    # some code here
  # get "/music" do
  # @music []
  #     erb: 'index'
  #   end


  # SHOW - show details about just one book
  # GET "/music/3" - Just get one specific book (that already exists)
  get "/music/:id" do
    @music = ["Tame Impala", "Wu Tang Clan", "The Smiths", "A Tribe Called Quest"]
    @music = @music[params[:id].to_i - 1]

    # some code here
  end

  # EDIT - like NEW, this just gives us a form that will PUT/PATCH our changes
  # GET "/music/3/edit" - Give us a form to edit a book's details
  get "/music/:id/edit" do
    # some code here
  end

  # UPDATE - like CREATE, this does the actual updating
  # PUT "/music/3" - Updates a specific book
  put "/music/:id" do

    # some code here
  end

  # UPDATE - believe it not, PUT & PATCH are often the same code, so many developers skip PATCH and just have PUT
  # PATCH "/music/3" - Partially updates a specific book
  patch "/music/:id" do
    # some code here
  end

  # DESTROY - totally nukes a book from the database
  # DELETE "/music/3" - Deletes a specific book
  delete "/music/:id" do

    @music
    # some code here
  end
end
