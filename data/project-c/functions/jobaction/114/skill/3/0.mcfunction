

function project-c:jobaction/114/skill/3/check_place/0
execute if score @s counter_5 matches 1 rotated ~ 0 run function project-c:jobaction/114/skill/3/1
execute if score @s counter_5 matches 0 run function project-c:jobaction/114/skill/3/fail
