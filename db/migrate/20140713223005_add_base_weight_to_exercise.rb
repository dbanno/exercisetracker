class AddBaseWeightToExercise < ActiveRecord::Migration
  def change
    add_column :exercises, :base_weight, :decimal
  end
end
