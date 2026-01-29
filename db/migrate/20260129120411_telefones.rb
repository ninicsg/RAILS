class Telefones < ActiveRecord::Migration
  def up
    create_table :telefones do |t|
      t.integer :contato_id
      t.string :telefone
      t.boolean :eh_principal
      t.timestamps
    end
  end
  def down
    drop_table :telefones
  end
end
