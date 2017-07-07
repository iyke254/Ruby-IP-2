require('rspec')
  require('member')

  describe('Member') do
    before() do
      Member.clear()
    end
  describe("#name") do
    it("returns the name of the member") do
      test_member = Member.new("Isaac", 52, "Founder")
      expect(test_member.name()).to(eq("Isaac"))
    end
  end

  describe("#age") do
    it("returns the age of the member") do
      test_member = Member.new("Isaac", 52, "Founder")
      expect(test_member.age()).to(eq(52))
    end
  end

  describe("#credentials") do
    it("returns the credentials of the member") do
      test_member = Member.new("Isaac", 52, "Founder")
      expect(test_member.credentials()).to(eq("Founder"))
    end
  end
end
