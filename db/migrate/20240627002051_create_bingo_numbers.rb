class CreateBingoNumbers < ActiveRecord::Migration[7.1]
  def change
    create_table :bingo_numbers do |t|
      t.integer :number
      t.boolean :marked

      t.timestamps
    end
  end
end
