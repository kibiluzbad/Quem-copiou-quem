class CreateComparacaos < ActiveRecord::Migration
  def self.up
    create_table :comparacaos do |t|
      t.string :pergunta

      t.timestamps
    end
  end

  def self.down
    drop_table :comparacaos
  end
end
