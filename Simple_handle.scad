IR=12.5;//inner rad.
OR=25; //outer Rad.
Length=120;
thinest_point=5;
top_rim_t=3;
$fn=200;

Change_across_handle=OR-IR-thinest_point;
handle_points=[[0,0],
[0,Length],
[OR,Length],
[OR,Length-top_rim_t],
[OR-sin(7.5)*Change_across_handle,Length-top_rim_t-(Change_across_handle-cos(7.5)*Change_across_handle)],
[OR-sin(15)*Change_across_handle,Length-top_rim_t-(Change_across_handle-cos(15)*Change_across_handle)],
[OR-sin(22)*Change_across_handle,Length-top_rim_t-(Change_across_handle-cos(22)*Change_across_handle)],
[OR-sin(30)*Change_across_handle,Length-top_rim_t-(Change_across_handle-cos(30)*Change_across_handle)],
[OR-sin(37)*Change_across_handle,Length-top_rim_t-(Change_across_handle-cos(37)*Change_across_handle)],
[OR-sin(45)*Change_across_handle,Length-top_rim_t-(Change_across_handle-cos(45)*Change_across_handle)],
[OR-sin(53)*Change_across_handle,Length-top_rim_t-(Change_across_handle-cos(53)*Change_across_handle)],
[OR-sin(60)*Change_across_handle,Length-top_rim_t-(Change_across_handle-cos(60)*Change_across_handle)],
[OR-sin(67)*Change_across_handle,Length-top_rim_t-(Change_across_handle-cos(67)*Change_across_handle)],
[OR-sin(75)*Change_across_handle,Length-top_rim_t-(Change_across_handle-cos(75)*Change_across_handle)],
[OR-sin(82)*Change_across_handle,Length-top_rim_t-(Change_across_handle-cos(82)*Change_across_handle)],
[OR-Change_across_handle,Length-top_rim_t-Change_across_handle],
[OR-Change_across_handle*.25,Change_across_handle*.25],
[OR-Change_across_handle*.5,0]];

difference(){
rotate_extrude() polygon( points=handle_points );
	cylinder(r=IR,h=Length*2,center=true);
	
}