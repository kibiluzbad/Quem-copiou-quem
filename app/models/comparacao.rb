class Comparacao < ActiveRecord::Base
  has_many :objetos
  
  def objeto_a
    self.objetos[0] if self.objetos
  end
  
  def objeto_b
    self.objetos[1] if self.objetos
  end
  
  def total_votos
    valor_a = objeto_a.votos
    valor_b = objeto_b.votos
    
    valor_a + valor_b if valor_a && valor_b
  end
  
  def voto(objeto_id)
    objeto = self.objetos.select{|o| o.id == objeto_id}.first
    
    if objeto
      objeto.votos ||= 0
      objeto.votos += 1
      objeto.save
    end
    
    objeto
  end
end
