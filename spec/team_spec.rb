require('rspec')
  require('team')
  require('member')

  describe(Team) do
    before() do
      Team.clear()
    end

    describe('#name') do
      it("returns the name of the team") do
        test_team = Team.new("The Untouchables")
        expect(test_team.name()).to(eq("The Untouchables"))
      end
    end

    describe('#id') do
      it("returns the id of the team") do
        test_team = Team.new("The Untouchables")
        expect(test_team.id()).to(eq(1))
      end
    end

    describe('#members') do
      it("initially returns an empty array of members in the team") do
        test_team = Team.new("The Untouchables")
        expect(test_team.members()).to(eq([]))
      end
    end

    describe("#save") do
      it("adds a team to the array of saved teams") do
        test_team = Team.new("The Untouchables")
        test_team.save()
        expect(Team.all()).to(eq([test_team]))
      end
    end

    describe(".all") do
      it("is empty at first") do
        expect(Team.all()).to(eq([]))
      end
    end

    describe(".clear") do
      it("empties out all of the saved teams") do
        Team.new("The Untouchabless").save()
        Team.clear()
        expect(Team.all()).to(eq([]))
      end
    end

    describe(".find") do
      it("returns a team by its id number") do
        test_team = Team.new("The Untouchables")
        test_team.save()
        test_team2 = Team.new("Jane's Cars")
        test_team2.save()
        expect(Team.find(test_team.id())).to(eq(test_team))
      end
    end
  end
