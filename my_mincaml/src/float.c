#include <stdio.h>
#include <stdint.h>
#include <caml/mlvalues.h>
#include <caml/alloc.h>

typedef union {
  int32_t i[2];
  double d;
} dbl;

typedef union {
  int32_t i[2];
  float f;
} flt;

value gethi(value v) {
  dbl d;
  d.d = Double_val(v);
  return caml_copy_int32(d.i[0]);
}

value getlo(value v) {
  dbl d;
  d.d = Double_val(v);
  return caml_copy_int32(d.i[1]);
}

value getf(value v){
  flt f;
  f.f = Double_val(v);
  return caml_copy_int32(f.i[0]);
}
