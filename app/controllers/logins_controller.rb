class LoginsController < ApplicationController

  def index
    @login = ""
    @senha = ""
    @resultadoLogin = ""
    Administrador.verificar_cadastro
  end

  def sair
    Administrador.set_admin_logado(nil)
    redirect_to '/logins'
  end

  def create
    login = params[:login]
    senha = params[:senha]
    if validarDados(login, senha)
      administrador = Administrador.login(login, senha)
      if administrador.nil?
        @login = login
        @senha = senha
        @resultadoLogin = "erro-Login Iválido"
        render "logins/index"
      else
        Administrador.set_admin_logado(administrador)
        redirect_to administrador_path(administrador.id.to_s)
      end
    else
      @login = login
      @senha = senha
      render 'logins/index'
    end
  end

  private

  def validarDados login, senha
    resultado = true
    if verificarCampoVazioOuNulo login
      @resultadoLogin = "erro-Preencha o campo de login"
      resultado = false
    elsif verificarCampoVazioOuNulo senha
      @resultadoLogin = "erro-Preencha o campo de senha"
      resultado = false
    end
    resultado
  end

  def verificarCampoVazioOuNulo string
    resultado = false
    if string.nil? || string == ''
      resultado = true
    end
    resultado
  end

end