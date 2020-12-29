#スキル
execute if score @s counter_7 matches 1 run function project-c:jobaction/106/items/gui/skill/page1
execute if score @s counter_7 matches 2 run function project-c:jobaction/106/items/gui/skill/page2
execute if score @s counter_7 matches 3 run function project-c:jobaction/106/items/gui/skill/page3
execute if score @s counter_7 matches 4 run function project-c:jobaction/106/items/gui/skill/page4

execute if score @s counter_7 matches 2.. run function project-c:jobaction/106/items/gui/skill/page_back
execute if score @s counter_7 matches ..3 run function project-c:jobaction/106/items/gui/skill/page_next
