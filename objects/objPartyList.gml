#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
List = ds_list_create();

for (i = 0; i <= 6; i += 1)
    ds_list_add(List,i);

ds_list_shuffle(List);
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
ds_list_destroy(List);
