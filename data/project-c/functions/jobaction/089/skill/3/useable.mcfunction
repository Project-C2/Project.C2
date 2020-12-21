tellraw @s [{"text":"[システム] ","color":"gold"},{"text":"叛逆の雷は焼き尽くした","color":"yellow","bold":true},{"text":" が使用可能になりました。","color":"yellow"}]
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 3 1
scoreboard players set @s counter_4 601
execute if entity @s[scores={CT3=1200..}] run function project-c:jobaction/089/replaceitem/3