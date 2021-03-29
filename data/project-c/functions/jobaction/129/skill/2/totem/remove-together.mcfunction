scoreboard players operation #129- stockcounter = @s stockcounter
scoreboard players operation #129- playerNumber = @s playerNumber
execute if entity @e[tag=129-totem-using,limit=1] as @e[tag=129-totem-using] if score @s stockcounter = #129- stockcounter run tag @s add kill
execute if entity @e[tag=129-totemA,limit=1] as @e[tag=129-totemA] if score @s stockcounter = #129- stockcounter run tag @s add kill
tag @s add kill
execute as @e[tag=kill] run kill @s

scoreboard players set @s counter 1000000

execute as @a if score @s playerNumber = #129- playerNumber run tag @s add 129-2-end-owner
#アイテムデータに記述してるクールタイムを取得してプレイヤーに渡す
loot replace block 0 0 0 container.0 loot project-c:neac/129/2
execute store result score #129- counter run data get block 0 0 0 Items[{Slot:0b}].tag.cooltime
scoreboard players operation #129- counter *= #20 counter
execute as @a[tag=129-2-end-owner] if score @s CT2 matches 1200.. run scoreboard players set @s CT2 1200
execute as @a[tag=129-2-end-owner] run scoreboard players operation @s CT2 -= #129- counter
execute as @a[tag=129-2-end-owner] run tag @s remove SkillReady2
execute as @a[tag=129-2-end-owner] run scoreboard players set @s usedSkill 2
execute as @a[tag=129-2-end-owner] run tag @s remove 129-2-end-owner

