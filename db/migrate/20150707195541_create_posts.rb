class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
<<<<<<< HEAD

=======
      
>>>>>>> refs/remotes/origin/master
      t.timestamps null: false
    end
  end
end
