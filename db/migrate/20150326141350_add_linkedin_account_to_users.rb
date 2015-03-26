class AddLinkedinAccountToUsers < ActiveRecord::Migration
  def change
    add_column :users, :linkedin_account, :string
  end
end
