tag @e[tag=hit,type=!#project-c:neac/undead] add 104no_undead
effect give @e[tag=hit,tag=104no_undead] instant_damage 1 0
effect give @e[tag=hit,tag=!104no_undead] instant_health 1 0
tag @e[tag=104no_undead] remove 104no_undead
tag @e[tag=hit] remove hit

function project-c:jobaction/104/skill/1/chance
