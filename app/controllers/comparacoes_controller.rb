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
    
    render :json => {:a => comparacao.objeto_a.percentual,:b => comparacao.objeto_b.percentual,:total => comparacao.total_votos.to_i}.to_json
  end

end
