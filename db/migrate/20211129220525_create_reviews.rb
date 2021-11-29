class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :score
      t.string :comment

      # this is the foreign key --> must match the other table but singular
      t.integer :game_id
      t.timestamps
    end
  end
end
