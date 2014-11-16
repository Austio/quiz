class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.timestamps
      t.string   :title
      t.integer  :quiz_id
    end
  end
end
