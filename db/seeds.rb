# 親の設定
animal = Categorie.create(name: "動物")
book = Categorie.create(name: "本")
entertainer = Categorie.create(name: "芸能")
landscape = Categorie.create(name: "風景")
fashion = Categorie.create(name: "ファッション")
other = Categorie.create(name: "その他")

# 子の設定
animal_cat = animal.children.create(name: "猫")
animal_dog = animal.children.create(name: "犬")
animal_bird = animal.children.create(name: "鳥")
animal_fish = animal.children.create(name: "魚")
animal_other = animal.children.create(name: "その他")

book_manga = book.children.create(name: "漫画")
book_novel = book.children.create(name: "小説")
book_academic = book.children.create(name: "学術")
book_other = book.children.create(name: "その他")

entertainer_female = entertainer.children.create(name: "女性")
entertainer_male = entertainer.children.create(name: "男性")
entertainer_geinin = entertainer.children.create(name: "芸人")
entertainer_other = entertainer.children.create(name: "その他")

landscape_nature = landscape.children.create(name: "自然")
landscape_food = landscape.children.create(name: "食べ物")
landscape_other = landscape.children.create(name: "その他")

fashion_female = fashion.children.create(name: "女性物")
fashion_male = fashion.children.create(name: "男性物")
fashion_cosmetics = fashion.children.create(name: "コスメ")
fashion_other = fashion.children.create(name: "その他")

other_chat = other.children.create(name: "雑談")
other_horror = other.children.create(name: "ホラー")
other_other = other.children.create(name: "その他")

# 孫の設定（今回はなし）
# 1_1.children.create([{name: ""}, {name: ""}, {name: ""}])

