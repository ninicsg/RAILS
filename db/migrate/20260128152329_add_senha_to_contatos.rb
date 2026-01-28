class AddSenhaToContatos < ActiveRecord::Migration
  def change
    add_column :contatos, :senha, :string
  end
end
