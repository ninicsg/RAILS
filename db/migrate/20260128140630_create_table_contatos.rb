class CreateTableContatos < ActiveRecord::Migration
  def up
    create_table :contatos do |t|
      t.string :nome
      t.string :email
      t.integer :usuario_id
      t.timestamps
    end
  end

  def down
    drop_table :contatos
  end
end
