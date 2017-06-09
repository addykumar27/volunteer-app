class CreateUseropps < ActiveRecord::Migration[5.1]
  def change
    create_table :useropps do |t|
      t.belongs_to :opportunity, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
