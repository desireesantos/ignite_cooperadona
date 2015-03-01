class DashboardsController < ApplicationController
  def home

    @PessoaPerfil = Pessoa.all.sample;

    #@Pessoas = Pessoa.where(nome: 'Miguellita');

    @Pessoas = Pessoa.where.not(id: @PessoaPerfil.id)

    @PessoasQueEuPossoEns = Pessoa.all()

    render "../views/dashboards/home.html"

  end
end
