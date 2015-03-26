class AddFacebookAccountToUsers < ActiveRecord::Migration
  def change
    add_column :users, :facebook_account, :string
  end
end
