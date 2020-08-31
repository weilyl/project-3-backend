class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.bigint :amount
      t.string :category
      t.date :date
      t.references :budget, null: false, foreign_key: true

      t.timestamps
    end
  end
end
