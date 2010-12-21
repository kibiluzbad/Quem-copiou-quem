class AdicionaRelacaoComapracaoObjeto < ActiveRecord::Migration
  def self.up
    alter_table :objetos do |t|
      t.integer :comparacao_id
    end
  end

  def self.down
    remove_column :objetos ,:comparacao_id
  end
end
