execute if score @s counter matches 1 run tellraw @a [{"text":"[Tohei-Railgun-System] ","bold":true,"italic":false},{"text":"エネルギーのチャージを開始します。"}]
execute if score @s counter matches 50 run tellraw @a [{"text":"[Tohei-Railgun-System] ","bold":true,"italic":false},{"text":"10%","color":"white"},{"text":" チャージ完了"}]
execute if score @s counter matches 100 run tellraw @a [{"text":"[Tohei-Railgun-System] ","bold":true,"italic":false},{"text":"20%","color":"white"},{"text":" チャージ完了"}]
execute if score @s counter matches 150 run tellraw @a [{"text":"[Tohei-Railgun-System] ","bold":true,"italic":false},{"text":"30%","color":"yellow"},{"text":" チャージ完了"}]
execute if score @s counter matches 200 run tellraw @a [{"text":"[Tohei-Railgun-System] ","bold":true,"italic":false},{"text":"40%","color":"yellow"},{"text":" チャージ完了"}]
execute if score @s counter matches 250 run tellraw @a [{"text":"[Tohei-Railgun-System] ","bold":true,"italic":false},{"text":"50%","color":"gold"},{"text":" チャージ完了"}]
execute if score @s counter matches 300 run tellraw @a [{"text":"[Tohei-Railgun-System] ","bold":true,"italic":false},{"text":"60%","color":"gold"},{"text":" チャージ完了"}]
execute if score @s counter matches 350 run tellraw @a [{"text":"[Tohei-Railgun-System] ","bold":true,"italic":false},{"text":"70%","color":"red"},{"text":" チャージ完了"}]
execute if score @s counter matches 400 run tellraw @a [{"text":"[Tohei-Railgun-System] ","bold":true,"italic":false},{"text":"80%","color":"red"},{"text":" チャージ完了"}]
execute if score @s counter matches 450 run tellraw @a [{"text":"[Tohei-Railgun-System] ","bold":true,"italic":false},{"text":"90%","color":"dark_red"},{"text":" チャージ完了"}]
execute if score @s counter matches 500 run tellraw @a [{"text":"[Tohei-Railgun-System] ","bold":true,"italic":false},{"text":"100%","color":"dark_purple"},{"text":" チャージ完了"}]
execute if score @s counter matches 520 run tellraw @a [{"text":"[Tohei-Railgun-System] ","bold":true,"italic":false},{"text":"発射します。"}]
execute if score @s counter matches 599 run function project-c:jobaction/114/skill/3/schedule_loop/3

##演出
execute if score @s counter matches 0..500 run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 3 0
execute if score @s counter matches 0..500 run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 3 0
execute if score @s counter matches 0..500 run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 3 1
execute if score @s counter matches 0..500 run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 3 1
execute if score @s counter matches 0..500 run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 3 2
execute if score @s counter matches 0..500 run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 3 2
execute if score @s counter matches 0..500 run particle minecraft:crit ^ ^ ^1 2 2 2 0 100
execute if score @s counter matches 0..500 run particle minecraft:crit ^ ^ ^3 2 2 2 0 100
execute if score @s counter matches 0..500 run particle minecraft:crit ^ ^ ^5 2 2 2 0 100
execute if score @s counter matches 0..500 run particle minecraft:crit ^ ^ ^7 2 2 2 0 100