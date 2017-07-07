require('sinatra')
  require('sinatra/reloader')
  also_reload('lib/**/*.rb')
  require('./lib/vehicle')

  get('/') do
    erb(:index)
  end

  get('/members') do
    @member = Member.all()
    erb(:members)
  end

  post('/members') do
    name = params.fetch("name")
    age = params.fetch("age")
    credentials = params.fetch("credentials")
  end
