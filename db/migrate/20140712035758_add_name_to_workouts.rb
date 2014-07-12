class AddNameToWorkouts < ActiveRecord::Migration
  def change
    add_column :workouts, :name, :string
	add_index :workouts, [:name, :user_id], unique:true
  end
end
