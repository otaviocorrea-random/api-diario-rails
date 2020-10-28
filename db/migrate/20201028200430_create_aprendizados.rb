class CreateAprendizados < ActiveRecord::Migration[6.0]
  def change
    create_table :aprendizados do |t|
      t.datetime :date
      t.text :content

      t.timestamps
    end
  end
end
