#スキルSetup

tag @s add 106_SSP
scoreboard players operation #106_select_skill counter = @s counter_6
scoreboard players operation #106_select_skill counter %= #100 counter


scoreboard players operation #106_skill counter = #106_select_skill counter
scoreboard players set #106_skill_slot counter 0
function project-c:jobaction/106/items/gui/skill/page_item

scoreboard players operation #106_skill counter = #106_select_skill counter
scoreboard players set #106_SSP counter 1
scoreboard players set #106_skill_slot counter 2
function project-c:jobaction/106/items/gui/skill/page_item

scoreboard players operation #106_skill counter = #106_select_skill counter
scoreboard players set #106_SSP counter 2
scoreboard players set #106_skill_slot counter 4
function project-c:jobaction/106/items/gui/skill/page_item

scoreboard players operation #106_skill counter = #106_select_skill counter
scoreboard players set #106_SSP counter 3
scoreboard players set #106_skill_slot counter 6
function project-c:jobaction/106/items/gui/skill/page_item

scoreboard players operation #106_skill counter = #106_select_skill counter
scoreboard players set #106_SSP counter 4
scoreboard players set #106_skill_slot counter 8
function project-c:jobaction/106/items/gui/skill/page_item


tag @s remove 106_SSP

scoreboard players reset #106_select_skill