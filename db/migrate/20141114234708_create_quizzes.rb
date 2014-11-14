class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|

      t.timestamps
      t.string   :title
      t.integer  :user_id
    end
  end
end
