//
// dark box for optode testing
//
include <arc.scad>

e = 0.1;
mm = 25.4;
$fn = 128;

// optode dims
op_lg_dia = 12;
op_lg_len = 10.5;
op_sm_dia = 7;
op_sm_len = 6.5;
op_over = 0.5;			/* oversize for optode mounting holes */

// box dims
box_len = 120;
box_wid = 50;
box_hgt = 20;
box_thk = 1;

op_off = box_len*0.5;			/* optode position from box end */
op_bkt_wid = 20;		/* optode bracket width */
op_bkt_thk = 1;			/* optode bracket thickness */

op_bkt_offset = box_wid/2-op_bkt_wid/2;

cable_dia = 1.6;		/* slot width for cable */

// cable exit
ct_rad = 4;
ct_leng = 10;
ct_hgt = box_hgt-box_thk-cable_dia;

// Filter holder
filter_pos = box_len*0.66;
filter_wid = 25;
filter_hole_dia = 15;

filter_w1 = 1.5;
filter_w2 = 2.5;
filter_thk = 0.75;

// LED holder
led_pos = box_len*0.85;
led_dia = 5;

module filter_slot() {
     translate( [filter_pos, 0, 0]) {
	  difference() {
	       cube( [box_thk, box_wid, box_hgt]);
	       translate( [-e, box_wid/2, box_hgt/2])
		    rotate( [0, 90, 0])
		    cylinder( d=filter_hole_dia, h=box_thk+2*e);
	  }
	  translate( [-filter_thk+e, box_wid/2-filter_wid/2, 0]) {
	       difference() {
		    cube( [filter_thk, filter_wid, box_hgt]);
		    translate( [-e, filter_w1, 0])
			 cube( [filter_thk+2*e, filter_wid-2*filter_w1, box_hgt+e]);
	       }
	       translate( [-box_thk+e, 0, 0]) {
		    difference() {
			 cube( [box_thk, filter_wid, box_hgt]);
			 translate( [-e, filter_w2, 0])
			      cube( [box_thk+2*e, filter_wid-2*filter_w2, box_hgt+e]);
		    }
	       }
	  }
     }
}

module led_bracket() {
  translate( [led_pos, op_bkt_offset, 0]) {
    difference() {
      cube( [op_bkt_thk, op_bkt_wid, box_hgt]);
      translate( [-e, op_bkt_wid/2, box_hgt/2])
	rotate( [0, 90, 0])
	cylinder( d=led_dia+0.2, h=op_bkt_thk+2*e);
    }
  }
}

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
	cylinder( d=op_lg_dia+op_over, h=op_bkt_thk+2*e);
    }
  }
  translate( [op_off-op_sm_len+e, op_bkt_offset, 0]) {
    difference() {
      cube( [op_bkt_thk, op_bkt_wid, box_hgt]);
      translate( [-e, op_bkt_wid/2, box_hgt/2])
	rotate( [0, 90, 0])
	cylinder( d=op_sm_dia+op_over, h=op_bkt_thk+2*e);
    }
  }
}

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
    // optode cable slot
    translate( [-e, box_wid-exit_wid(2)-box_thk+cable_dia, box_thk+cable_dia])
      cube( [box_wid+2*e, cable_dia, ct_hgt]);
    // LED BNC hole
    translate( [box_len-box_thk-e, box_wid-8, box_hgt/2])
	 rotate( [0, 90, 0])
	 cylinder( d=0.375*mm, h=box_thk+2*e);
  }
}

module box_assembly() {
     box();
     translate( [box_thk, box_wid-exit_wid(2)-box_thk, box_thk]) cable_exit(2);

     op_with_bracket();
     led_bracket();
     filter_slot();
}

lid_lip = 2.5;

module lid() {
     difference() {
	  translate( [-box_thk, -box_thk, e])
	       cube( [box_len+2*box_thk, box_wid+2*box_thk, lid_lip+box_thk]);
	  cube([box_len, box_wid, lid_lip+e]);
     }
}

// box_assembly();

rotate( [180, 0, 0]) lid();

