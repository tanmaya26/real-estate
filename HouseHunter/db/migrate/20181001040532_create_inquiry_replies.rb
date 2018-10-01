class CreateInquiryReplies < ActiveRecord::Migration[5.2]
  def change
    create_table :inquiry_replies do |t|
      t.references :user, foreign_key: true
      t.references :house, foreign_key: true
      t.references :inquiry, foreign_key: true
      t.string :message
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
