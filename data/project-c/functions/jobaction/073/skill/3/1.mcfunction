scoreboard players remove @s[scores={MagicFatigue=..300},nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"glass sword\"}"}}}}] Mana 3
scoreboard players remove @s[scores={MagicFatigue=301..},nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"glass sword\"}"}}}}] Mana 6
scoreboard players add @s[scores={MagicFatigue=..400},nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"glass sword\"}"}}}}] MagicFatigue 3

scoreboard players add @s counter_4 1
scoreboard players set @s CT3 1210

replaceitem entity @s[scores={counter_4=1}] hotbar.3 golden_sword{display:{Name:"{\"text\":\"glass sword\"}",Lore:["{\"text\":\"§f手にしている者のマナを喰らい\"}","{\"text\":\"§f自身を強化する魔剣\"}","{\"text\":\"§5使用者のマナが枯渇すると\"}","{\"text\":\"§5マナを求め周囲の魔素を暴走させ壊れる\"}"]},Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:4}],HideFlags:1,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.05,Operation:0,UUID:[I;-1663900442,-1354611267,-1541575511,1659080247],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:0.5,Operation:0,UUID:[I;-1663900442,-1354611267,-1541575511,1659080247],Slot:"mainhand"}]}


execute if entity @s[scores={counter_4=401..600}] run particle crit ~ ~1 ~ 0 0 0 1 1
execute if entity @s[scores={counter_4=401..600}] run particle minecraft:witch ~ ~1 ~ 0 0 0 1 1

tag @s[scores={Mana=..1},nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"glass sword\"}"}}}}] add destoryBinding

execute if entity @s[tag=destoryBinding] run particle minecraft:explosion_emitter ~ ~ ~ 3 1 3 1 10
execute if entity @s[tag=destoryBinding] run particle minecraft:enchanted_hit ~ ~ ~ 3 1 3 0.1 128
execute if entity @s[tag=destoryBinding] run playsound minecraft:block.end_gateway.spawn master @a ~ ~ ~ 1 1
execute if entity @s[tag=destoryBinding] run effect give @e[distance=..3] instant_damage 1 0
execute if entity @s[tag=destoryBinding] run effect give @e[distance=..3] slowness 3 255
execute if entity @s[tag=destoryBinding] run effect give @e[distance=..3] weakness 3 255

replaceitem entity @s[tag=destoryBinding] hotbar.3 minecraft:compass{display:{Name:"{\"text\":\"CoolTime"}} 20

scoreboard players set @s[tag=destoryBinding] CT3 800
tag @a[tag=destoryBinding] remove useBinding
scoreboard players reset @a[tag=destoryBinding] counter_4
tag @a[tag=destoryBinding] remove destoryBinding