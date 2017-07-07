require('rspec')
  require('member')

  describe(Member) do
    describe("#age") do
      it("returns the members age") do
        sample_member = Member.new("John","Co-founder", "19")
        expect(sample_member.age()).to(eq(19))
      end
    end
  end
