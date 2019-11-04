class CreateRegistros < ActiveRecord::Migration[6.0]
  def change
    create_table :registros do |t|
      t.integer :pontuacao
      t.references :paciente, null: false, foreign_key: true
      t.references :escala, null: false, foreign_key: true

      t.timestamps
    end
  end
end
