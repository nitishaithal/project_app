class AddActivationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :activation_deigest, :string
    add_column :users, :activated, :boolean, default: true
    add_column :users, :activated_at, :datetime
  end
end
