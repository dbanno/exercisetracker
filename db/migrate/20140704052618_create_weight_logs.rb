class CreateWeightLogs < ActiveRecord::Migration
  def change
    create_table :weight_logs do |t|
      t.string :exercise
      t.decimal :weight
      t.integer :reps

      t.timestamps
    end
  end
end
