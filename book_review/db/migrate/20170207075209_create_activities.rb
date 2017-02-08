class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.integer :action_type
      t.references :user, foreign_key: true
      t.integer :object_id

      t.timestamps
    end
  end
end
