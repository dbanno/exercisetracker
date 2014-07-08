class AddNewndexToExercise < ActiveRecord::Migration
  def change
  add_index :exercises, [:name, :user_id], unique:true
  remove_index :exercises, :name => 'index_exercises_on_name'
  end
end
