scoreboard players add @s counter_1 1
execute if score @s counter_1 matches 5.. if data entity @s {OnGround:1b } run scoreboard players add @s counter_1 10
execute unless data entity @s {Inventory:[{tag:{display:{Name:"{\"text\":\"ステップ&デストロイ\",\"color\":\"white\",\"italic\":false}"},destroyMode:1b}}]} run replaceitem entity @s hotbar.1 minecraft:golden_sword{display:{Name:"{\"text\":\"ステップ&デストロイ\",\"color\":\"white\",\"italic\":false}",Lore:["{\"text\":\"発動:ダッシュジャンプ\",\"color\":\"yellow\",\"italic\":false}","{\"text\":\"正面に小ジャンプする。\",\"color\":\"white\",\"italic\":false}","{\"text\":\"CT:5\",\"color\":\"green\",\"italic\":false}","{\"text\":\"--------------------------------\",\"italic\":false,\"color\":\"gray\"}","{\"text\":\"発動:発動後攻撃\",\"color\":\"yellow\",\"italic\":false}","{\"text\":\"攻撃力7で攻撃し、敵に1秒スタンを付与。\",\"color\":\"white\",\"italic\":false}","{\"text\":\"CT:12\",\"color\":\"green\",\"italic\":false}"]},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"destroyMode",Amount:6,Operation:0,UUIDLeast:1,UUIDMost:67,Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"destroyMode",Amount:255,Operation:0,UUID:[I;0,1,0,67],Slot:"mainhand"}],Enchantments:[{}],destroyMode:1b} 1
execute if score @s counter_1 matches 40.. run tag @s remove SkillDelay1
execute if score @s counter_1 matches 40.. run clear @s minecraft:golden_sword
execute if score @s counter_1 matches 40.. run scoreboard players reset @s counter_1