require "test_helper"

class TeamTest < ActiveSupport::TestCase
  test "should have many members" do
    team = Team.new
    assert_respond_to team, :members
  end

end
