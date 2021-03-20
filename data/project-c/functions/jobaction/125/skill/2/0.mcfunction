scoreboard players set @s counter_2 120
replaceitem entity @s hotbar.2 minecraft:light_weighted_pressure_plate{display:{Name:'{"text":"スターソーサー","color":"white","italic":false}',Lore:['{"text":"発動: 右クリック","color":"yellow","italic":false}','{"text":"壁反射する弾を放ち、もう一度右クリックで起動。","color":"white","italic":false}','{"text":"真芯で当てると威力が上昇する。","color":"white","italic":false}','{"text":"CT:8","color":"green","italic":false}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 1

execute anchored eyes run summon minecraft:armor_stand ^ ^ ^ {Tags:["125dummy","125star"],Marker:1b,Invisible:1b,NoGravity:1b}
execute anchored eyes run tp @e[tag=125dummy] ^ ^ ^ ~ ~
scoreboard players operation @e[tag=125dummy] playerNumber = @s playerNumber
execute if entity @s[team=Red] run team join RedDummy @e[tag=125dummy]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=125dummy]
tag @e[tag=125dummy] remove 125dummy

scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick

kill @e[tag=125test]
data merge block 130 61 -62 {auto:1b}