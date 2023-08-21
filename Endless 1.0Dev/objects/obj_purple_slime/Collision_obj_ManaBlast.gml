bullet = instance_place(floor(x), floor(y), obj_purple_slime);
if (bullet)
{
    with (bullet){
        instance_destroy();
    }
}
instance_destroy();

