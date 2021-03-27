scoreboard players operation #129- stockcounter = @e[type=villager,tag=hit,limit=1] stockcounter

loot replace block 0 0 0 container.0 loot project-c:neac/129/2
execute store result score #129- counter run data get block 0 0 0 Items[{Slot:0b}].tag.e-time2
scoreboard players operation #129- counter *= #20 counter

scoreboard players operation #129- playerNumber = @s playerNumber
execute as @e[tag=129-totem-using] if score @s playerNumber = #129- playerNumber run tag @s add 129-2-my-tu
execute as @e[tag=129-totem-using,tag=129-2-my-tu] if score @s stockcounter = #129- stockcounter run tag @s add 129-2-used
execute as @e[tag=129-totem-using,tag=129-2-my-tu,tag=129-2-used] if score @s counter matches 1.. run tag @s add 129-2-use-now
execute as @e[tag=129-totem-using,tag=129-2-my-tu,tag=!129-2-used] if score @s counter matches 1.. run tag @s add 129-2-using-other

execute store result score #129- subcounter run data get entity @s Health 100
execute store result score #129- HarfHP run attribute @s minecraft:generic.max_health get
scoreboard players operation #129- HarfHP *= #100 counter
scoreboard players operation #129- HarfHP /= #2 counter

execute if score #129- subcounter > #129- HarfHP unless entity @e[tag=129-2-used] unless entity @e[tag=129-2-using-other] run function project-c:jobaction/129/skill/2/totem/use
execute unless score #129- subcounter > #129- HarfHP unless entity @e[tag=129-2-used] unless entity @e[tag=129-2-using-other] run tellraw @s [{"text":"トーテム使用不可： "},{"text":"体力が足りません","color":"#dd0000"}]
execute if entity @e[tag=129-2-used] run function project-c:jobaction/129/skill/2/totem/used
execute if entity @e[tag=129-2-using-other] run function project-c:jobaction/129/skill/2/totem/used

execute if entity @e[tag=129-2-my-tu] as @e[tag=129-2-my-tu] run tag @s remove 129-2-my-tu
execute if entity @e[tag=129-2-used] as @e[tag=129-2-used] run tag @s remove 129-2-used
execute if entity @e[tag=129-2-use-now] as @e[tag=129-2-use-now] run tag @s remove 129-2-use-now
execute if entity @e[tag=129-2-using-other] as @e[tag=129-2-using-other] run tag @s remove 129-2-using-other

scoreboard players reset #129-