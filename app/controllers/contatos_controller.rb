class ContatosController < ApplicationController

    def index
    if params[:usuario_id].present?
        @contatos= Contato.where(usuario_id: params[:usuario_id]).order(:id, :nome)
    else
        @contatos=Contato.order(:id, :nome)
    end

    @usuario = Usuario.find_by_id(params[:usuario_id]) if params[:usuario_id].present?
    end


  def show
    @contato = Contato.find_by_id(params[:id])
  end

    def new
    @contato = Contato.new(usuario_id: params[:usuario_id])
    @usuarios = Usuario.order(:nome)
    end

  def create
    @contato = Contato.new(params[:contato])

    if @contato.save
      redirect_to contatos_path(usuario_id: @contato.usuario_id)
    else
      render 'new'
    end
  end

  def edit
    # @usuario = Usuario.find_by_id(params[:usuario_id])
    # @contato = @usuario.contatos.find_by_id(params[:id])

    @contato = Contato.find_by_id(params[:id])
    @usuario = @contato.usuario
  end

  def update
    @contato = Contato.find_by_id(params[:id])

    if @contato.update_attributes(params[:contato])
      redirect_to contato_path(@contato)
    else
      render 'edit'
    end
  end

  def destroy
    @contato = Contato.find_by_id(params[:id])
    usuario_id = @contato.usuario_id
    @contato.destroy
    redirect_to contatos_path(usuario_id: usuario_id)
  end

end