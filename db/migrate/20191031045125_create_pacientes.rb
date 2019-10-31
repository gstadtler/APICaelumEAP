class CreatePacientes < ActiveRecord::Migration[6.0]
  def change
    create_table :pacientes do |t|
      t.string :nome
      t.string :cpf
      t.string :genero
      t.text :hip_diag
      t.integer :idade
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
