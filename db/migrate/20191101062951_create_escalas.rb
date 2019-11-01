class CreateEscalas < ActiveRecord::Migration[6.0]
  def change
    create_table :escalas do |t|
      t.string :nome

      t.timestamps
    end
  end
end
