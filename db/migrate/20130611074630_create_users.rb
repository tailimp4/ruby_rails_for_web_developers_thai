class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fristname
      t.string :lastname
      t.string :email
      t.string :user_login
      t.string :user_password

      t.timestamps
    end
  end
end
