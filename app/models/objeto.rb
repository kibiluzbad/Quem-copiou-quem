class Objeto < ActiveRecord::Base
  belongs_to :comparacao
  
  def percentual
    sprintf('%.2f%', 100 * self.votos / self.comparacao.total_votos)
  end
end
