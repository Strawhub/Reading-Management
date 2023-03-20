class AddCreateCommentsTocomments < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :pages, :integer
  end
end
