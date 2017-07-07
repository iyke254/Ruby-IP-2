require('rspec')
  require('member')

  describe(Member) do
    describe("#credentials") do
      it("returns the members credentials") do
        sample_member = Member.new("John", "Co-founder")
        expect(sample_member.credentials()).to(eq("member"))
      end
    end
  end
