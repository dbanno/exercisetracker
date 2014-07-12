class AddNotesToWeightLog < ActiveRecord::Migration
  def change
    add_column :weight_logs, :notes, :text
  end
end
