function project-c:jobaction/089/skill/2/elem_loop
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 2
scoreboard players add @s subcounter 1
scoreboard players set @s counter 0
execute if score @s subcounter matches 4.. run kill @s