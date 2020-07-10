var arg

for (var i = 0 ; i < argument_count - 1 ; i++ ){
	arg[i] = argument[i]
}
groupDirection = argument[argument_count-1]

setCursor = arg[0]
setCursor[?"cursor"] = 1

var group = ds_map_create()
group[?"button"] = arg
group[?"cursor"] = 0
//left right or up down
if(groupDirection == 0){
	group[?"direction"] = 0
}else{
	group[?"direction"] = 1
}

return group
