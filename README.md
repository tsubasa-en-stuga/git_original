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
has_many :phrases, through: :tweet_phrases
has_many :tweet_phrases
has_many :comments
```

### phrasesテーブル

|カラム|データ型|NOT NULL制約|一意性制約|外部キー制約|INDEX|
|:--:|:--:|:--:|:--:|:--:|:--:|
|text|text|●|-|-|-|
|form_type|integer|●|-|-|-|

```
  has_many :tweets, through: :tweet_phrases
  has_many :tweet_phrase
  enum form_type: [:subject, :object, :verb, :impression]
```

### tweet_phraseテーブル

|カラム|データ型|NOT NULL制約|一意性制約|外部キー制約|INDEX|
|:--:|:--:|:--:|:--:|:--:|:--:|
|tweet_id|references|●|-|-|-|
|phrase_id|references|●|●|-|

```
belongs_to :tweet
belongs_to :phrase
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

