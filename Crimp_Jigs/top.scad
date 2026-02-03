//
// top crimp for Harting 40p connector
//
e = 0.1;
$fn = 32;
mm = 25.4;

slot_w = 5;
slot_d = 2;

body_w = 8;
body_l = 27;
body_d = 5;

extra_l = 35;

bslot_w = 3.4;
bslot_l = 27.5;
bslot_d = 3;

module top() {
  difference() {
    cube( [body_w, body_l, body_d]);
    translate( [(body_w-slot_w)/2, -e, body_d-slot_d])
      cube( [slot_w, body_l+2*e, slot_d+2*e]);
  }
}

module bot() {
  difference() {
    cube( [body_w, extra_l, body_d]);
    translate( [(body_w-bslot_w)/2, (extra_l-bslot_l)/2, body_d-bslot_d])
      cube( [bslot_w, bslot_l, bslot_d+2*e]);
  }
}

sbot_w = 3.6;
sbot_l = 30.3;
sbot_d = 3;

key_w = 1.2;
key_h = 2.2;

module sbot() {
  difference() {
    cube( [body_w, extra_l, body_d]);
    translate( [(body_w-sbot_w)/2, (extra_l-sbot_l)/2, body_d-sbot_d]) {
      cube( [sbot_w, sbot_l, sbot_d+e]);
      translate( [-key_w, (sbot_l/2)-key_h/2, 0])
	cube( [key_w+e, key_h, sbot_d+e]);
    }
  }
}

stop_d = 1.8;

module stop() {
  difference() {
    cube( [body_w, extra_l, body_d]);
    translate( [(body_w-sbot_w)/2, (extra_l-sbot_l)/2, body_d-stop_d]) {
      cube( [sbot_w, sbot_l, stop_d+e]);
    }
  }
}


top();
translate( [15, 0, 0]) bot();
translate( [30, 0, 0]) sbot();
translate( [45, 0, 0]) stop();

