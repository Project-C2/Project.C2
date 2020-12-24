#コスト支払い
scoreboard players set #110- counter_3 1040

#演出とか
particle minecraft:firework ~ ~ ~ 1 1 1 1 100 normal @a
particle minecraft:firework ~ ~ ~ 1 1 1 1 25 force @a
playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 2
playsound minecraft:entity.snowball.throw master @a ~ ~ ~ 1 0.5

#慣性とか含めたMotion測定
summon minecraft:armor_stand 0.0 0.0 0.0 {Tags:["110vector"],Marker:1b,NoGravity:1b,Invisible:1b}
data modify entity @e[tag=110vector,limit=1] Pos set from entity @s Motion
execute as @e[tag=110vector] positioned as @s positioned ~ ~ ~ run tp @s ^ ^ ^2
#召喚と設定
execute anchored eyes run summon minecraft:snowball ^ ^ ^ {Tags:["this","110spectral_shot"],Glowing:1b,Fire:2s}
execute if entity @s[team=Red] run tag @e[tag=this] add 110spectralR
execute if entity @s[team=Blue] run tag @e[tag=this] add 110spectralB
data modify entity @e[tag=this,limit=1] Owner set from entity @s UUID
execute as @e[tag=this] run data modify entity @s Motion set from entity @e[tag=110vector,limit=1] Pos
kill @e[tag=110vector]

#後処理
tag @e[tag=this] remove this
data merge block -50 61 -62 {auto:1b}