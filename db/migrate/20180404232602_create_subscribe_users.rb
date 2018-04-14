class CreateSubscribeUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :subscribe_users do |t|
      t.string :first_name,  limit: 100
      t.string :last_name,   limit: 100
      t.string :email,       limit: 100, null: false

      t.timestamps
    end
    add_idx = %Q(CREATE INDEX subscribe_users_email_idx ON subscribe_users using btree(email))
    execute add_idx
  end
end
