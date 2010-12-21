class ComparacoesController < ApplicationController
 
  # Get /
  # Get /index
  def index
    @comparacao = Comparacao.last(:include => :objetos)
  end
  
  # Get /votar/[:objeto_id]
  def votar
    comparacao = Comparacao.last(:include => :objetos)
    
    comparacao.voto(params[:objeto_id].to_i)
    
    render :text => "#{comparacao.objeto_a.percentual}|#{comparacao.objeto_b.percentual}|#{comparacao.total_votos.to_i}"
  end

end
