class CreateParametros < ActiveRecord::Migration[6.0]
  def change
    create_table :parametros do |t|
      t.string :nome
      t.references :escalas, null: false, foreign_key: true

      t.timestamps
    end
  end
end
