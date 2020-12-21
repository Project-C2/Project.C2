tag @s add 106_gui_all_setup
tag @s add 106_page_setup
tag @s add 106_skill_page_setup
tag @s add 106_exstorage_page_setup
execute if score @s drop2 matches 1 run tag @s[tag=SkillReady1] remove SkillReady1
execute if score @s drop2 matches 1 run tag @s[tag=SkillReady2] remove SkillReady2
execute if score @s drop2 matches 1 run tag @s[tag=SkillReady3] remove SkillReady3
function project-c:general/inventoryclear
tag @s add 106_drop
#function ex3:general/inventory_changed/execution

function project-c:jobaction/106/items/gui/main

