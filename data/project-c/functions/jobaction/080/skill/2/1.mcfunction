playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 3 0
playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 3 0
playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 3 0

tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"「君達と過ごした時間は、最高に楽しかったよ」","bold":true}]

execute if entity @s[scores={HP=30..}] run summon armor_stand ~ ~1.75 ~ {Tags:["080-explode1"],Invisible:1b}
execute if entity @s[scores={HP=20..29}] run summon armor_stand ~ ~1.75 ~ {Tags:["080-explode2"],Invisible:1b}
execute if entity @s[scores={HP=10..19}] run summon armor_stand ~ ~1.75 ~ {Tags:["080-explode3"],Invisible:1b}
execute if entity @s[scores={HP=..9}] run summon armor_stand ~ ~1.75 ~ {Tags:["080-explode4"],Invisible:1b}

summon creeper ~ ~ ~ {CustomName:'{"text":"機甲部隊の超臨界"}',ignited:1b,ExplosionRadius:3b,Fuse:0s,Invulnerable:0b,NoAI:1b,Silent:1b,powered:1b}

execute if entity @s[scores={HP=30..},team=Red] run effect give @a[team=Red] speed 10 1
execute if entity @s[scores={HP=30..},team=Blue] run effect give @a[team=Blue] speed 10 1

execute if entity @s[scores={HP=20..29},team=Red] run effect give @a[team=Red] speed 15 0
execute if entity @s[scores={HP=20..29},team=Blue] run effect give @a[team=Blue] speed 15 0
execute if entity @s[scores={HP=20..29},team=Red] run effect give @a[team=Red] resistance 15 0
execute if entity @s[scores={HP=20..29},team=Blue] run effect give @a[team=Blue] resistance 15 0

execute if entity @s[scores={HP=10..19},team=Red] run effect give @a[team=Red] speed 15 1
execute if entity @s[scores={HP=10..19},team=Blue] run effect give @a[team=Blue] speed 15 1
execute if entity @s[scores={HP=10..19},team=Red] run effect give @a[team=Red] resistance 15 1
execute if entity @s[scores={HP=10..19},team=Blue] run effect give @a[team=Blue] resistance 15 1
execute if entity @s[scores={HP=10..19},team=Red] run effect give @a[team=Red] regeneration 15 1
execute if entity @s[scores={HP=10..19},team=Blue] run effect give @a[team=Blue] regeneration 15 1

execute if entity @s[scores={HP=..9},team=Red] run effect give @a[team=Red] speed 15 2
execute if entity @s[scores={HP=..9},team=Blue] run effect give @a[team=Blue] speed 15 2
execute if entity @s[scores={HP=..9},team=Red] run effect give @a[team=Red] resistance 15 2
execute if entity @s[scores={HP=..9},team=Blue] run effect give @a[team=Blue] resistance 15 2
execute if entity @s[scores={HP=..9},team=Red] run effect give @a[team=Red] regeneration 15 1
execute if entity @s[scores={HP=..9},team=Blue] run effect give @a[team=Blue] regeneration 15 1
execute if entity @s[scores={HP=..9},team=Red] run effect give @a[team=Red] strength 15 0
execute if entity @s[scores={HP=..9},team=Blue] run effect give @a[team=Blue] strength 15 0

gamerule showDeathMessages false
kill @s
tellraw @a ["",{"selector":"@s"},{"text":" は光を残して消滅した "}]
gamerule showDeathMessages true

scoreboard players reset @s counter_2

data merge block 109 2 31 {auto:1b}
data merge block 109 3 31 {auto:1b}
data merge block 109 4 31 {auto:1b}
data merge block 109 5 31 {auto:1b}