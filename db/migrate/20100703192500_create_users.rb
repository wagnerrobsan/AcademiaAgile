class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name, :email, :turma
      t.text :about
    end
  end

  def self.down
    drop_table :users
  end
end
