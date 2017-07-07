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
    name = params.fetch("name")
  end
