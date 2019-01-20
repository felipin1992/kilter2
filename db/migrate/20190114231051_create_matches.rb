class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.references :dog, foreign_key: true
      t.references :like, foreign_key: true
      
      t.timestamps
    end
  end
end
