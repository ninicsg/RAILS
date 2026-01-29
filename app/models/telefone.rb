class Telefone < ActiveRecord::Base
  attr_accessible :contato_id, :telefone, :eh_principal

    belongs_to :contato

end