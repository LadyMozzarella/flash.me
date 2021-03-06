class InitialMigration < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :term
      t.text   :description
      t.belongs_to :deck
      t.timestamps
    end

    create_table :rounds do |t|
      t.belongs_to :deck
      t.integer    :correct, default: 0
      t.integer    :incorrect, default: 0
      t.belongs_to :user
      t.timestamps
    end

    create_table :decks do |t|
      t.string   :name
      t.belongs_to :user
      t.timestamps
    end

    create_table :users do |t|
      t.string :name
      t.string :user_password
      t.string :email
      t.timestamps
    end
  end
end
