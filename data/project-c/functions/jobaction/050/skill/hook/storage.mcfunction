
# 取得
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem
    data modify storage chuz:context Item.Offhand set from entity @s Inventory[{Slot:-106b}]
# いろいろする
# メインハンド
    execute if data storage chuz:context Item.Mainhand.tag{ItemName:Hyper_Hookshot} run function project-c:jobaction/050/skill/hook/item/hyper_hookshot/main

# オフハンド
    execute if data storage chuz:context Item.Offhand.tag{ItemName:Hyper_Hookshot} run function project-c:jobaction/050/skill/hook/item/hyper_hookshot/main

# 削除
    data remove storage chuz:context Item