class CreateCases < ActiveRecord::Migration[6.0]
  def change
    create_table :cases do |t|
      t.text :introduct
      t.text :ishop
      t.text :orange
      t.text :rsheng
      t.text :law
      t.text :wealth
      t.text :wangt
      t.text :xibaohui
      t.text :contact
      t.string :name

      t.timestamps
    end
  end
end
