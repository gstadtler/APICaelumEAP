class CreateInterpretacoes < ActiveRecord::Migration[6.0]
  def change
    create_table :interpretacoes do |t|
      t.string :nome
      t.integer :valor_maximo
      t.integer :valor_minimo
      t.references :escala, null: false, foreign_key: true

      t.timestamps
    end
  end
end
