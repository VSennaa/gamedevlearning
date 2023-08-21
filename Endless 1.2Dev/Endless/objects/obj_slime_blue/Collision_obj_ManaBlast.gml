bullet = instance_place(floor(x), floor(y), obj_slime_blue);
if (bullet)
{
    with (bullet){
        instance_destroy();
    }
}
instance_destroy();
