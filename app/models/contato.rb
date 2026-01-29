class Contato < ActiveRecord::Base
  attr_accessible :nome, :email, :usuario_id

  validates :nome, :email, :usuario_id, presence: true

  validates :email,
    uniqueness: { case_sensitive: false },
    format: { with: /\A[^@\s]+@[^@\s]+\.[^@\s]+\z/, message: "inválido" }

    belongs_to :usuario
    has_many :telefones

end