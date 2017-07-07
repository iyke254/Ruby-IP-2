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
    member = Member.new(name, age, credentials)
    member.save()
    erb(:success)
  end

  get('/members/:id') do
    @member = Member.find(params.fetch("id"))
    erb(:member)
  end
