require "test_helper"

class MemberTest < ActiveSupport::TestCase
  test "should belong to a team" do
    member = Member.new
    assert_respond_to member, :team
  end

  test "should have and belong to many projects" do
    member = Member.new
    assert_respond_to member, :projects
  end
end
