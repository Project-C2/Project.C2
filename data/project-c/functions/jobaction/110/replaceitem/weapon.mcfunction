clear @s #project-c:neac/all{110weapon:1b}

execute if score @s counter_1 matches 0 run loot replace entity @s container.0 loot project-c:wnkm/110/weapons/default_sword
execute if score @s counter_1 matches 1 run loot replace entity @s container.0 loot project-c:wnkm/110/weapons/claymore
execute if score @s counter_1 matches 2 run loot replace entity @s container.0 loot project-c:wnkm/110/weapons/hinoki_blade
execute if score @s counter_1 matches 4 run loot replace entity @s container.0 loot project-c:wnkm/110/weapons/composite
execute if score @s counter_1 matches 5 run loot replace entity @s container.0 loot project-c:wnkm/110/weapons/bowgun
execute if score @s counter_1 matches 6 unless score @s counter matches 2.. run loot replace entity @s container.0 loot project-c:wnkm/110/weapons/neptune
execute if score @s counter_1 matches 7 run loot replace entity @s container.0 loot project-c:wnkm/110/weapons/dagger

execute if score @s counter_1 matches 3 unless score @s stockcounter matches 1.. run loot replace entity @s container.0 loot project-c:wnkm/110/weapons/chisel
execute if score @s counter_1 matches 3 if score @s stockcounter matches 1 run loot replace entity @s container.0 loot project-c:wnkm/110/weapons/chisel_1
execute if score @s counter_1 matches 3 if score @s stockcounter matches 2 run loot replace entity @s container.0 loot project-c:wnkm/110/weapons/chisel_2
execute if score @s counter_1 matches 3 if score @s stockcounter matches 3 run loot replace entity @s container.0 loot project-c:wnkm/110/weapons/chisel_3
execute if score @s counter_1 matches 3 if score @s stockcounter matches 4 run loot replace entity @s container.0 loot project-c:wnkm/110/weapons/chisel_4
execute if score @s counter_1 matches 3 if score @s stockcounter matches 5 run loot replace entity @s container.0 loot project-c:wnkm/110/weapons/chisel_5
execute if score @s counter_1 matches 3 if score @s stockcounter matches 6 run loot replace entity @s container.0 loot project-c:wnkm/110/weapons/chisel_6
execute if score @s counter_1 matches 3 if score @s stockcounter matches 7 run loot replace entity @s container.0 loot project-c:wnkm/110/weapons/chisel_7
execute if score @s counter_1 matches 3 if score @s stockcounter matches 8.. run loot replace entity @s container.0 loot project-c:wnkm/110/weapons/chisel_8

