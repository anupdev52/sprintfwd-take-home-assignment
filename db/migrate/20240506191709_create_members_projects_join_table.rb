class CreateMembersProjectsJoinTable < ActiveRecord::Migration[7.1]
  def change
    create_table :members_projects, id: false do |t|
      t.references :member, foreign_key: true
      t.references :project, foreign_key: true
    end
  end
end
