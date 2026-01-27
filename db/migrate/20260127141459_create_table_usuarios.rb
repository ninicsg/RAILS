class CreateTableUsuarios < ActiveRecord::Migration
  def up
    create_table :usuarios do |t|
      t.string :nome
      t.string :email
      t.string :senha

      t.timestamps #campos de qdo foi criado e quando foi feita ultima alteração create_at e update_at
    end
  end

  def down
    drop_table :usuarios
  end
end

# bundle exec rake db:create 
# bundle exec rake db:migrate -- up
# bundle exec rake db:rollback -- down

#tipos de dados mais comuns
#string - p texto curto
#text - p texto longo
#integer - p numeros inteiros
#float - p numeros decimais
#boolean - p valores true e false
#datetime - p data e hora