class Member
  @@members = []

  define_method(:initialize) do |name, age, credentials|
    @name = name
    @age = age
    @credentials = credentials
  end

  define_method(:name) do
    @name
  end

  define_method(:age) do
    @age
  end

  define_method(:credentials) do
    @credentials
  end
