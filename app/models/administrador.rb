class Administrador < ApplicationRecord
  validates :login, uniqueness: {message: 'Already exists'},
                    presence: {message: 'Can not be blank'}
  validates :senha, presence: {message: 'Can not be blank'}

  @@admin_logado = nil

  def self.get_admin_logado
    @@admin_logado
  end

  def self.set_admin_logado admin
    @@admin_logado = admin
  end

  def self.login login, senha
    @administadors = Administrador.all
    resultado = nil
    @administadors.each do |administador|
      if (administador.login == login) && (administador.senha == senha)
        resultado = administador
        break
      end
    end
    resultado
  end

  def self.verificar_cadastro
    resultado = false
    administradors = Administrador.all
    administradors.each do |admin|
      if (admin.login == "admin")
        resultado = true
      end
    end

    if resultado == false
      administrador = Administrador.new login:"admin", senha:"admin"
      administrador.save
    end
  end

end


