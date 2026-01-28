class Usuario < ActiveRecord::Base
    attr_accessible :nome, :email, :senha

    validates :nome, :email, :senha, presence: true

    validates :email, uniqueness: {case_sensitive: false}, 
    format: { with: /\A[^@\s]+@[^@\s]+\.[^@\s]+\z/, message: "inválido"}

    has_many :contatos, dependent: :destroy
    #after_save :criptografa_senha
end