class CreateIInspecaos < ActiveRecord::Migration[7.1]
  def change
    create_table :i_inspecaos do |t|
      t.string :nome
      t.string :descricao
      t.string :tipo
      t.string :status

      t.timestamps
    end
  end
end
