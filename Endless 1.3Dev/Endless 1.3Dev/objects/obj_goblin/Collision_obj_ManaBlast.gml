bullet = instance_place(floor(x), floor(y), obj_goblin);
if (bullet)
{
    with (bullet){
        instance_destroy();
    }
}
instance_destroy();

obj_player.goblin_kills += 1
obj_gerador.current_goblin -=1