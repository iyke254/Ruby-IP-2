class Member
  define_method(:initialize) do |name, credentials|
    @credentials = credentials
  end

  define_method(:credentials) do
    current_credentials == founder
  end
end
