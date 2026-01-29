class TelefonesController < ApplicationController

    def index
    if params[:contato_id].present?
        @telefones= Telefone.where(contato_id: params[:contato_id]).order(:id)
    else
        @telefones=Telefone.order(:id)
    end

    @contato = Contato.find_by_id(params[:contato_id]) if params[:contato_id].present?
    end


    def show
    @telefone = Telefone.find_by_id(params[:id])
    @contato  = @telefone.contato  # define o contato associado
    end
    def new
    @telefone = Telefone.new(contato_id: params[:contato_id])
    @contatos = Contato.order(:nome)
    end

  def create
    @telefone = Telefone.new(params[:telefone])

    if @telefone.save
      redirect_to telefones_path(contato_id: @telefone.contato_id)
    else
      render 'new'
    end
  end

  def edit
    # @usuario = Usuario.find_by_id(params[:usuario_id])
    # @contato = @usuario.contatos.find_by_id(params[:id])

    @telefone = Telefone.find_by_id(params[:id])
    @contato = @telefone.contato
  end

  def update
    @telefone = Telefone.find_by_id(params[:id])

    if @telefone.update_attributes(params[:telefone])
      redirect_to telefone_path(@telefone)
    else
      render 'edit'
    end
  end

  def destroy
    @telefone = Telefone.find_by_id(params[:id])
    contato_id = @telefone.contato_id
    @telefone.destroy
    redirect_to telefones_path(contato_id: contato_id)
  end

end