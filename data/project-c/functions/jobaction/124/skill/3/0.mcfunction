clear @s #minecraft:arrows{124skillID:3b}
function project-c:jobaction/124/replaceitem/3

execute anchored eyes positioned ^ ^ ^ as @e[type=arrow,nbt={Color:3643790},tag=!124arrow,limit=1,sort=nearest,distance=..4] run tag @s add 124shot
execute if entity @e[tag=124shot,limit=1] as @e[tag=124shot] at @s run function project-c:jobaction/124/skill/3/1
