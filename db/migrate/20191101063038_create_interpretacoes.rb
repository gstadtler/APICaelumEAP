class CreateInterpretacoes < ActiveRecord::Migration[6.0]
  def change
    create_table :interpretacoes do |t|
      t.string :nome
      t.integer :valor_minimo
      t.integer :valor_maximo
      t.references :escalas, null: false, foreign_key: true

      t.timestamps
    end
  end
end
