class Member
  define_method(:initialize) do |name, credentials|
    @credentials = credentials
  end

  define_method(:age) do
    current_year = Time.new().year()
    current_year.-(@year)
  end
end
