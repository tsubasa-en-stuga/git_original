class Comment < ActiveRecord::Base
  belongs_to :tweet, counter_cache: :comments_count     #tweetsテーブルとのアソシエーション
  belongs_to :user                #usersテーブルとのアソシエーション
end