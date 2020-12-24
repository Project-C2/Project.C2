
execute unless entity @s[tag=110drop] run function project-c:jobaction/110/gui/main
execute if entity @s[tag=110drop] run function project-c:jobaction/110/gui/set



tag @s[tag=110drop] remove 110drop
advancement revoke @s only project-c:neac/inventory_changed
