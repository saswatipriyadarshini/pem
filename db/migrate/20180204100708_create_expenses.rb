class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.references :amount, foreign_key: true
      t.text :note
      t.date :date
      t.references :category, foreign_key: true
      t.references :account, foreign_key: true

      t.timestamps
    end
  end
end
