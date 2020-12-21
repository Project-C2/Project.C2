effect give @e[tag=hit,nbt=!{ActiveEffects:[{Id:24b}]}] instant_damage 1 0
effect give @e[tag=hit,nbt={ActiveEffects:[{Id:24b}]}] instant_damage 1 1
effect clear @e[tag=hit,nbt={ActiveEffects:[{Id:24b}]}] glowing


tag @e[tag=hit] remove hit
