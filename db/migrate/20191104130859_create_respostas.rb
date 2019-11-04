class CreateRespostas < ActiveRecord::Migration[6.0]
  def change
    create_table :respostas do |t|
      t.string :nome
      t.integer :pontuacao
      t.references :parametro, null: false, foreign_key: true

      t.timestamps
    end
  end
end
