class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :state
      t.string :email
      t.string :event_id

      t.index :email, unique: true

      t.timestamps
    end
  end
end
