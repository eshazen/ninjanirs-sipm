//
// dark box for optode testing
//
include <arc.scad>

e = 0.1;
mm = 25.4;
$fn = 32;

// optode dims
op_lg_dia = 12;
op_lg_len = 10.5;
op_sm_dia = 7;
op_sm_len = 6.5;

// box dims
box_len = 100;
box_wid = 50;
box_hgt = 20;
box_thk = 1;

op_off = 35;			/* optode position from box end */
op_bkt_wid = 20;		/* optode bracket width */
op_bkt_thk = 1;			/* optode bracket thickness */

op_bkt_offset = 0;


cable_dia = 1.6;		/* slot width for cable */

module optode() {
  cylinder( h=op_sm_len, d=op_sm_dia);
  translate( [0, 0, op_sm_len-e])
    cylinder( h=op_lg_len, d=op_lg_dia);
}

module empty_box() {
  difference() {
    cube( [box_len, box_wid, box_hgt]);
    translate( [box_thk, box_thk, box_thk])
      cube( [box_len-2*box_thk, box_wid-2*box_thk, box_hgt]);
  }
}


module op_bracket() {
  translate( [op_off-op_lg_len-op_sm_len+3, op_bkt_offset, 0]) {
    difference() {
      cube( [op_bkt_thk, op_bkt_wid, box_hgt]);
      translate( [-e, op_bkt_wid/2, box_hgt/2])
	rotate( [0, 90, 0])
	cylinder( d=op_lg_dia+0.2, h=op_bkt_thk+2*e);
    }
  }
  translate( [op_off-op_sm_len+e, op_bkt_offset, 0]) {
    difference() {
      cube( [op_bkt_thk, op_bkt_wid, box_hgt]);
      translate( [-e, op_bkt_wid/2, box_hgt/2])
	rotate( [0, 90, 0])
	cylinder( d=op_sm_dia+0.2, h=op_bkt_thk+2*e);
    }
  }
}

// cable exit
ct_rad = 4;
ct_leng = 10;
ct_hgt = 5;

module serpent( nturn) {

  for( i=[0:nturn-1]) {
    translate( [i*4*ct_rad+i*2*cable_dia, 0, 0]) {
      linear_extrude(ct_hgt+e) arc(ct_rad, [180, 360], cable_dia);
      translate( [ct_rad*2+cable_dia, ct_leng, 0])
	linear_extrude(ct_hgt+e) arc(ct_rad, [0, 180], cable_dia);
      translate( [ct_rad, -e, 0])
	cube( [cable_dia, ct_leng+2*e, ct_hgt+e]);
      translate( [ct_rad*3+cable_dia, -e, 0])
	cube( [cable_dia, ct_leng+2*e, ct_hgt+e]);
    }    
  }
}

function exit_wid( nturn) = ct_leng+(ct_rad+cable_dia)*2+2*cable_dia;
function exit_hgt() = ct_hgt+box_thk;

module cable_exit( nturn) {
  // dims to enclose the serpent
  sd_len = nturn*ct_rad*4+cable_dia*nturn*2+cable_dia;
  sd_wid = ct_leng+(ct_rad+cable_dia)*2;
  translate( [-ct_rad-cable_dia, cable_dia, box_thk]) {
    difference() {
      translate( [ct_rad+cable_dia, -cable_dia, 0])
	cube( [sd_len-2*ct_rad-2*cable_dia, sd_wid+2*cable_dia, ct_hgt-e]);
      translate( [ct_rad+cable_dia, ct_rad+cable_dia, -e])
	serpent( nturn);
    }
  }
  cube( [sd_len-2*ct_rad-2*cable_dia, sd_wid+2*cable_dia, box_thk+e]);
}


module op_with_bracket() {
// move to optode position
  translate( [op_off, op_bkt_offset+op_bkt_wid/2, box_hgt/2]) {
    rotate( [0, -90, 0])  {
      //      color("#606060")    optode();
    }
  }
  // bracket
  op_bracket();
}

module box() {
  difference() {
    empty_box();
    translate( [-e, box_wid-exit_wid(2)-box_thk+cable_dia, box_thk+cable_dia])
      cube( [box_wid+2*e, cable_dia, ct_hgt]);
  }
}

box();
translate( [box_thk, box_wid-exit_wid(2)-box_thk, box_thk]) {
  cable_exit(2);
}

op_with_bracket();

