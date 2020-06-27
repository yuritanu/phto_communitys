# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 親の設定
1 = Categorie.create(name: "")
2 = Categorie.create(name: "")
3 = Categorie.create(name: "")

# 子の設定
1_1 = 1.children.create(name: "")
1_2 = 1.children.create(name: "")
1_3 = 1.children.create(name: "")

2_1 = 2.children.create(name: "")
2_2 = 2.children.create(name: "")
2_3 = 2.children.create(name: "")


# 孫の設定
1_1.children.create([{name: ""}, {name: ""}, {name: ""}])
1_2.children.create([{name: ""}, {name: ""}, {name: ""},{name: ""}])
1_3.children.create([{name: ""}, {name:""},{name:""}])

2_1.children.create([{name: ""}, {name:""},{name:""}])
2_2.children.create([{name: ""}, {name:""},{name:""}])
2_3.children.create([{name: ""}, {name:""},{name:""}])

