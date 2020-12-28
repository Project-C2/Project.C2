scoreboard players set @s CT3 600
scoreboard players set @s drop 0
clear @s iron_axe{display:{Name:"{\"text\":\"銀の斧\",\"color\":\"gray\",\"underlined\":true,\"italic\":false}"}}
execute at @e[tag=026-water] if score @e[tag=026-water,distance=..0.01,sort=nearest,limit=1] playerNumber = @s playerNumber run clear @s golden_axe{display:{Name:"{\"text\":\"金の斧\",\"color\":\"gold\",\"underlined\":true,\"italic\":false}"}}

replaceitem entity @s hotbar.0 minecraft:stone_axe{display:{Name:"\"古びた斧\"",Lore:["{\"text\":\"§5木こりの仕事用の斧。\"}","{\"text\":\"§d年季が入っている。\"}","{\"text\":\"\"}","{\"text\":\"§7利き手に持ったとき:\"}","{\"text\":\"§2 攻撃速度 0.8\"}","{\"text\":\"§2 攻撃力 8\"}"]},AttributeModifiers:[{Name:"HaruEditor",UUID:[I;-1637044811,653807115,-1588747286,325763061],Operation:0,AttributeName:"generic.attack_damage",Amount:7d,Slot:"mainhand"},{Name:"HaruEditor",UUID:[I;-1637044811,653807115,-1588747286,325763061],Operation:0,AttributeName:"generic.attack_speed",Amount:-3.2d,Slot:"mainhand"}],Enchantments:[{id:efficiency,lvl:2s}],Unbreakable:1b,HideFlags:2}

playsound minecraft:item.trident.thunder player @a ~ ~ ~ 1.5 2
particle minecraft:explosion ~ ~ ~ 0.8 0.8 0.8 1 80 normal @a
particle minecraft:explosion ~ ~ ~ 0.8 0.8 0.8 1 20 force @a
particle minecraft:dust 0.5 0.5 0.5 5 ~ ~ ~ 2 2 2 1 400 normal @a
particle minecraft:dust 0.5 0.5 0.5 5 ~ ~ ~ 2 2 2 1 100 force @a
give @s minecraft:iron_axe{display:{Name:"{\"text\":\"銀の斧\",\"color\":\"gray\",\"underlined\":true,\"italic\":false}",Lore:["{\"text\":\"§7泉から出てきた貴重な斧。\"}","{\"text\":\"§f少し叩いても壊れない。\"}","{\"text\":\"\"}","{\"text\":\"§7利き手に持ったとき:\"}","{\"text\":\"§2 攻撃速度 1.0\"}","{\"text\":\"§2 攻撃力 9\"}"]},Enchantments:[{id:fortune,lvl:1s}],AttributeModifiers:[{Name:"HaruEditor",UUID:[I;-1637044811,653807115,-1588747286,325763061],Operation:0,AttributeName:"generic.attack_speed",Amount:-3d,Slot:"mainhand"},{Name:"HaruEditor",UUID:[I;-1637044811,653807115,-1588747286,325763061],Operation:0,AttributeName:"generic.attack_damage",Amount:8d,Slot:"mainhand"}],HideFlags:2,Damage:247} 1
execute at @e[tag=026-water] if score @e[tag=026-water,distance=..0.01,sort=nearest,limit=1] playerNumber = @s playerNumber run tag @e[tag=026-water,distance=..0.01,sort=nearest,limit=1] add 026-axeSummon
execute if entity @e[tag=026-axeSummon] run clear @s golden_axe{display:{Name:"{\"text\":\"金の斧\",\"color\":\"gold\",\"underlined\":true,\"italic\":false}"}}
execute if entity @e[tag=026-axeSummon] at @e[tag=026-axeSummon,limit=1,sort=nearest] run summon item ~ ~ ~ {Tags:["isItem"],Motion:[0.0d,0.06d,0.0d],NoGravity:1b,Item:{id:"minecraft:golden_axe",Count:1b,tag:{HideFlags:2,Damage:32,Enchantments:[{id:knockback,lvl:2s},{id:fire_aspect,lvl:2s}],AttributeModifiers:[{Name:"HaruEditor",UUID:[I;-1637044811,653807115,-1588747286,325763061],Operation:0,AttributeName:"generic.attack_speed",Amount:-3.5d,Slot:"mainhand"},{Name:"HaruEditor",UUID:[I;-1637044811,653807115,-1588747286,325763061],Operation:0,AttributeName:"generic.attack_damage",Amount:11d,Slot:"mainhand"}],display:{Name:"{\"text\":\"金の斧\",\"color\":\"gold\",\"underlined\":true,\"italic\":false}",Lore:["{\"text\":\"§7泉から出てきた伝説の斧。\"}","{\"text\":\"§f叩くと壊れる。\"}","{\"text\":\"\"}","{\"text\":\"§7利き手に持ったとき:\"}","{\"text\":\"§2 攻撃速度 0.5\"}","{\"text\":\"§2 攻撃力 12\"}"]}}},Age:5400,Health:40,PickupDelay:40,Glowing:1b}
execute if entity @e[tag=026-axeSummon] at @e[tag=026-axeSummon,limit=1,sort=nearest] run particle minecraft:dust 1 0.6 0 5 ~ ~ ~ 2 2 2 1 400 normal @a
execute if entity @e[tag=026-axeSummon] at @e[tag=026-axeSummon,limit=1,sort=nearest] run particle minecraft:dust 1 0.6 0 5 ~ ~ ~ 2 2 2 1 100 force @a
execute if entity @e[tag=026-axeSummon] run tag @e[tag=026-axeSummon] remove 026-axeSummon

tag @s remove 026axe_drop
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3