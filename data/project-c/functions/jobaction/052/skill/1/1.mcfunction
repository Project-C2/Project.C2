clear @s snowball
scoreboard players set @s drop 1
playsound minecraft:block.dispenser.fail master @a ~ ~ ~ 2 1.45
scoreboard players add @s counter 1
tellraw @s[scores={counter=1}] ["",{"text":"\u307b\u3046\u304d\u306e\u4e0a\u4e0b\u79fb\u52d5:"},{"text":"ON","color":"red"}]
scoreboard players set @s[scores={counter=2..}] counter 0
tellraw @s[scores={counter=0}] ["",{"text":"\u307b\u3046\u304d\u306e\u4e0a\u4e0b\u79fb\u52d5:"},{"text":"OFF","color":"blue"}]