loot replace block 0 0 0 container.4 loot project-c:wnkm/110/bless/1
loot replace block 0 0 0 container.5 loot project-c:wnkm/110/bless/2
loot replace block 0 0 0 container.6 loot project-c:wnkm/110/bless/3
loot replace block 0 0 0 container.7 loot project-c:wnkm/110/bless/4

data modify block 0 0 0 Items[{tag:{110blessID:1b}}].tag.110GUISlot set value 4b
data modify block 0 0 0 Items[{tag:{110blessID:2b}}].tag.110GUISlot set value 5b
data modify block 0 0 0 Items[{tag:{110blessID:3b}}].tag.110GUISlot set value 6b
data modify block 0 0 0 Items[{tag:{110blessID:4b}}].tag.110GUISlot set value 7b
data modify block 0 0 0 Items[{tag:{110blessItem:1b}}].tag.110GUI set value 1b
data remove block 0 0 0 Items[{tag:{110blessItem:1b}}].tag.110blessID
data remove block 0 0 0 Items[{tag:{110blessItem:1b}}].tag.110blessItem


