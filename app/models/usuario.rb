class Usuario < ActiveRecord::Base
    attr_accessible :nome, :email, :senha
end