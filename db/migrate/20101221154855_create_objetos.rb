class CreateObjetos < ActiveRecord::Migration
  def self.up
    create_table :objetos do |t|
      t.string :valor
      t.float :votos

      t.timestamps
    end
  end

  def self.down
    drop_table :objetos
  end
end
