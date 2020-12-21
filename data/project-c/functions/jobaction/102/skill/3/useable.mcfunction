tellraw @s [{"text":"[システム] ","color":"gold"},{"text":"1002J","color":"dark_red","bold":true,"underlined":true,"italic":false},{"text":" が使用可能になりました。","color":"yellow"}]
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 3 1
scoreboard players set @s counter_3 1801
execute if entity @s[scores={CT3=1200..}] run function project-c:jobaction/102/replaceitem/3