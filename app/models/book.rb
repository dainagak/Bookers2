class Book < ApplicationRecord
  belongs_to :user

  #validates :user_id, {presence: true} #投稿をログインユーザーへ紐づけるid用
  validates :title, presence: true
  validates :body, presence: true, length: { maximum: 200}

#投稿一覧でユーザーと投稿を紐付ける（whereメソッド）
#def books
  #return Book.where(user_id: self.id)
#end

end
