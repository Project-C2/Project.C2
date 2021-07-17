summon minecraft:villager ~ -100 ~ {CustomName:'{"text":"マーリン"}',NoAI:1b,Silent:1b,Tags:["038-Marin"]}
execute as @e[tag=038-Marin,limit=1] run me 「アーサー」
scoreboard players add @s counter_3 1
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 0.3 2
particle minecraft:item minecraft:yellow_stained_glass ~ ~0.5 ~ 0 0 0 0.5 300 force @a
particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.5 300 force @a
kill @e[tag=038-Marin,limit=1]
