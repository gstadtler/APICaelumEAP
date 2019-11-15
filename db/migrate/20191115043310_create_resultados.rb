class CreateResultados < ActiveRecord::Migration[6.0]
  def change
    create_table :resultados do |t|
      t.references :registro, null: false, foreign_key: true
      t.references :parametro, null: false, foreign_key: true
      t.references :resposta, null: false, foreign_key: true

      t.timestamps
    end
  end
end
