loot replace block 0 0 0 container.4 loot project-c:wnkm/110/bless/5
loot replace block 0 0 0 container.5 loot project-c:wnkm/110/bless/6
loot replace block 0 0 0 container.6 loot project-c:wnkm/110/bless/7
loot replace block 0 0 0 container.7 loot project-c:wnkm/110/bless/8

data modify block 0 0 0 Items[{tag:{110blessID:5b}}].tag.110GUISlot set value 4b
data modify block 0 0 0 Items[{tag:{110blessID:6b}}].tag.110GUISlot set value 5b
data modify block 0 0 0 Items[{tag:{110blessID:7b}}].tag.110GUISlot set value 6b
data modify block 0 0 0 Items[{tag:{110blessID:8b}}].tag.110GUISlot set value 7b
data modify block 0 0 0 Items[{tag:{110blessItem:1b}}].tag.110GUI set value 1b
data remove block 0 0 0 Items[{tag:{110blessItem:1b}}].tag.110blessID
data remove block 0 0 0 Items[{tag:{110blessItem:1b}}].tag.110blessItem


