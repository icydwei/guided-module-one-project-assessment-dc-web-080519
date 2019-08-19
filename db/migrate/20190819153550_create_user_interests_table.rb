class CreateUserInterestsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :user_interests do |t|
      t.integer :user_id
      t.integer :interest_id
    end
  end
end
