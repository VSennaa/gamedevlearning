window_set_size(800,600)
manabullet_cooldown = false;
manabullet = instance_create_layer(-20,-20,layer,obj_ManaBlast)
InputStack = ds_stack_create();
InputList = [vk_up, vk_down, vk_left, vk_right];
sidespeed = 1.2
sidespd = sidespeed
can_fire = true;
direcao = 0
max_hp = 20
hp = max_hp
tangivel = true