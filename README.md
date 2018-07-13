# README
## データベース設計
### usersテーブル

|カラム|データ型|NOT NULL制約|一意性制約|外部キー制約|INDEX|
|:--:|:--:|:--:|:--:|:--:|:--:|
|email|string|●|●|-|●|
|password|string|●|-|-|-|
|created_at|datetime|●|●|-|-|
|updated_at|datetime|●|●|-|-|
|nickname|string|●|●|-|●|

```
has_many :tweets
has_many :comments 
```

※deviseで実装

### tweetsテーブル

|カラム|データ型|NOT NULL制約|一意性制約|外部キー制約|INDEX|
|:--:|:--:|:--:|:--:|:--:|:--:|
|text|text|●|●|-|●|
|image|string|●|●|-|●|
|user_id|references|●|-|●|●|
|created_at|datetime|●|●|-|-|
|updated_at|datetime|●|●|-|-|

```
belongs_to :user
has_many :comments
```

### phrasesテーブル

|カラム|データ型|NOT NULL制約|一意性制約|外部キー制約|INDEX|
|:--:|:--:|:--:|:--:|:--:|:--:|
|text|text|●|-|-|-|
|phrase_type|integer|●|-|-|-|
|tweet_id|references|●|-|●|●|

```
has_many :tweets
enum phrases_type: [:subject, :verb, :object, :impression]
```

### commentsテーブル
 
|カラム|データ型|NOT NULL制約|一意性制約|外部キー制約|INDEX|
|:--:|:--:|:--:|:--:|:--:|:--:|
|name|string|●|●|-|●|
|text|text|●|-|-|●|
|user_id|references|●|-|●|●|
|tweet_id|references|●|-|●|●|
|created_at|datetime|●|●|-|-|
|updated_at|datetime|●|●|-|-|

```
belongs_to :tweet
belongs_to :user    
```

