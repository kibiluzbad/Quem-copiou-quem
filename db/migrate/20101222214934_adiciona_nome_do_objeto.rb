class AdicionaNomeDoObjeto < ActiveRecord::Migration
  def self.up
  alter_table :objetos do |t|
      t.string :nome
    end
  end

  def self.down
    remove_column :objetos ,:nome
  end
end
