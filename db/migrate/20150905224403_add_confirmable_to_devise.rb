class AddConfirmableToDevise < ActiveRecord::Migration
  def up
    change_table(:users) do |t|
      t.string   :confirmation_token, :string
      t.datetime :confirmed_at, :datetime
      t.datetime :confirmation_sent_at, :datetime
      t.string   :unconfirmed_email, :string
    end
    add_index :users, :confirmation_token, :unique => true
  end

  def down
    remove_columns :users, :confirmation_token, :confirmed_at, :confirmation_sent_at
    # remove_columns :users, :unconfirmed_email # Only if using reconfirmable
  end
end
