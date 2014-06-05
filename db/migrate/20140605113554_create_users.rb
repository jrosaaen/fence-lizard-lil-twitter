class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |u|
      u.string :username, :email, :password, :website
      u.text :description
      u.timestamps
    end
  end
end
