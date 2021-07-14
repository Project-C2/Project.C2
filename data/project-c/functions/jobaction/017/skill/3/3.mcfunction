particle minecraft:explosion ~ ~ ~ 3 3 3 0 40 force

#(実行者のteamNumberを仮想プレイヤーに保存)
scoreboard players operation #skillCheck teamNumber = @s teamNumber
summon marker ^ ^ ^ {Tags:["017-StarMeteor","017-StarMeteorSummon"]}
execute rotated ~30 -1.1 run summon marker ^ ^ ^10 {Tags:["017-StarMeteor","017-StarMeteorSummon"]}
execute rotated ~60 -1.1 run summon marker ^ ^ ^10 {Tags:["017-StarMeteor","017-StarMeteorSummon"]}
execute rotated ~90 -1.1 run summon marker ^ ^ ^10 {Tags:["017-StarMeteor","017-StarMeteorSummon"]}
execute rotated ~120 -1.1 run summon marker ^ ^ ^10 {Tags:["017-StarMeteor","017-StarMeteorSummon"]}
execute rotated ~150 -1.1 run summon marker ^ ^ ^10 {Tags:["017-StarMeteor","017-StarMeteorSummon"]}
execute rotated ~180 -1.1 run summon marker ^ ^ ^10 {Tags:["017-StarMeteor","017-StarMeteorSummon"]}
execute rotated ~210 -1.1 run summon marker ^ ^ ^10 {Tags:["017-StarMeteor","017-StarMeteorSummon"]}
execute rotated ~240 -1.1 run summon marker ^ ^ ^10 {Tags:["017-StarMeteor","017-StarMeteorSummon"]}
execute rotated ~270 -1.1 run summon marker ^ ^ ^10 {Tags:["017-StarMeteor","017-StarMeteorSummon"]}
execute rotated ~300 -1.1 run summon marker ^ ^ ^10 {Tags:["017-StarMeteor","017-StarMeteorSummon"]}
execute rotated ~330 -1.1 run summon marker ^ ^ ^10 {Tags:["017-StarMeteor","017-StarMeteorSummon"]}

scoreboard players operation @e[tag=017-StarMeteorSummon] teamNumber = #skillCheck teamNumber

execute as @e[tag=Battle] unless score @s teamNumber = #skillCheck teamNumber run tag @s add 017-target
execute as @e[tag=017-StarMeteorSummon] at @s run teleport @s ^ ^ ^ facing entity @e[limit=1,sort=random,tag=017-target]

tag @e[tag=017-target] remove 017-target

execute as @a[tag=Battle] if score @s teamNumber = #skillCheck teamNumber run effect give @s strength 10 2
execute as @a[tag=Battle] if score @s teamNumber = #skillCheck teamNumber run effect give @s speed 10 0
execute as @a[tag=Battle] if score @s teamNumber = #skillCheck teamNumber at @s run particle minecraft:flash ~ ~0.5 ~ 0 0 0 0 3 force
execute as @a[tag=Battle] if score @s teamNumber = #skillCheck teamNumber at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~1 ~ 2 0

execute as @a[tag=Battle] if score @s teamNumber = #skillCheck teamNumber run tellraw @s [{"text":"アンタレス","color":"red","bold":true},{"text":"による支援を受けた","color":"gray"}]
scoreboard players reset #skillCheck teamNumber

tag @s[tag=017-StarMeteorSummon] remove 017-StarMeteorSummon

data merge block 87 5 -122 {auto:1b}