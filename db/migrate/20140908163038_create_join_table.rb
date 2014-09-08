class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :patients, :medications
  end
end
