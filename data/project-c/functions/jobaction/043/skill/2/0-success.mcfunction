scoreboard players set @s CT2 600

execute if entity @s[team=Red] as @a[team=Red,distance=0.01..6,sort=nearest,limit=1,gamemode=!spectator] run tag @s add 043-2first
execute if entity @s[team=Blue] as @a[team=Blue,distance=0.01..6,sort=nearest,limit=1,gamemode=!spectator] run tag @s add 043-2first
tellraw @a[tag=043-2first] ["",{"selector":"@s"},{"text":"と盟約を結びました。\n盟約持続中は耐性と移動速度上昇が付与されます。"}]
tellraw @s ["",{"selector":"@a[tag=043-2first]"},{"text":"と盟約を結びました。\n盟約持続中は対象の周囲にいると攻撃力が増加します。"}]
function project-c:jobaction/043/skill/2/0-particle
scoreboard players reset #043-dummy counter
execute as @a[tag=043-2first] at @s run function project-c:jobaction/043/skill/2/0-particle
scoreboard players reset #043-dummy counter
scoreboard players operation @s subcounter = @a[tag=043-2first,limit=1] playerNumber
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 1.2 1.6
playsound minecraft:item.trident.hit_ground master @a ~ ~ ~ 1.2 0.5
scoreboard players set @s counter_2 1

tag @a[tag=043-2first] remove 043-2first
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2