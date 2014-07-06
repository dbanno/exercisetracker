class AddIndexToExerciseName < ActiveRecord::Migration
  def change
	add_index :exercises, :name, unique:true
	
  end
end
