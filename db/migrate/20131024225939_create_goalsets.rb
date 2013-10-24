class CreateGoalsets < ActiveRecord::Migration
  def change
    create_table :goalsets do |t|
      t.string :title
      t.boolean :complete
      t.datetime :target_date

      t.timestamps
    end
  end
end
