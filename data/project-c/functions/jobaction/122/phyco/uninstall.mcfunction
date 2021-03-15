tag @e remove nbs_phyco
scoreboard objectives remove nbs_phyco
scoreboard objectives remove nbs_phyco_t
datapack disable "phyco"
tellraw @s ["",{"text":"[NBS] ","color":"gold","bold":"true"},{"text":"Data pack ","color":"yellow"},{"text":"phyco","color":"gold","underlined":"true"},{"text":" uninstalled successfully. You may now remove it from your data pack folder.","color":"yellow"}]