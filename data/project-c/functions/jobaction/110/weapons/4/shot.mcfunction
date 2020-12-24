execute anchored eyes positioned ^ ^ ^ run tag @e[type=arrow,tag=!110shotArrow,limit=1,sort=nearest] add this
execute as @e[tag=this] run function project-c:jobaction/110/shot_arrow
tag @e[tag=this] add 110shotArrow
tag @e[tag=this] remove this
