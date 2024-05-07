require "test_helper"

class ProjectTest < ActiveSupport::TestCase
  test "should have and belong to many members" do
    project = Project.new
    assert_respond_to project, :members
  end
end
