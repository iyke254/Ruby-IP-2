class Member
  @@members = []

  define_method(:initialize) do |name, age, credentials|
    @name = name
    @age = age
    @credentials = credentials
    @id = @@members.length().+(1)
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

  define_singleton_method(:find) do |identification|
    found_member = nil
    @@members.each() do |member|
      if member.id().eql?(identification.to.i())
        found_member = member
      end
    end
    found_member    
end
