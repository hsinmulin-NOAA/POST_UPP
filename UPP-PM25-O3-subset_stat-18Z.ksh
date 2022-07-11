#=================================================================================
# ---- Get grib data at certain record # ----------------------
#
#  subset $field & ":1 hybrid level" and append all time together
#

#========================================
#=== Day1

#==== FOR 18Z cycle

#---- previous cycles (fill the gap of day1)
#---- ndate -18  ==> "00z"

let istart1=5
let iend1=6

echo $istart1 > meta_time-step.txt

let ix=$istart1

while [ $ix -le $iend1 ]; do
  let i2=ix

  # typeset -Z2 i2
  # file=NATLEV${i2}.tm00
  typeset -Z3 i2
  file=rrfs.t00z.natlevf${i2}.tm00.grib2

   if [ $i2 -eq $istart1 ]; then
     wgrib2 $postdirx18/$file -match ":$field1" -match ":$field3" -GRIB $fname1
     wgrib2 $postdirx18/$file -match ":$field2" -match ":$field3" -GRIB $fname1s
   else
     wgrib2 $postdirx18/$file -match ":$field1" -match ":$field3" -append -GRIB $fname1
     wgrib2 $postdirx18/$file -match ":$field2" -match ":$field3" -append -GRIB $fname1s
   fi

  let ix=ix+1
done      # while


#---- previous cycles (fill the gap of day1)
#---- ndate -12  ==> "06z"

let istart1=1
let iend1=6

let ix=$istart1

while [ $ix -le $iend1 ]; do
  let i2=ix

  # typeset -Z2 i2
  # file=NATLEV${i2}.tm00
  typeset -Z3 i2
  file=rrfs.t06z.natlevf${i2}.tm00.grib2

   if [ $i2 -eq $istart1 ]; then
     wgrib2 $postdirx12/$file -match ":$field1" -match ":$field3" -append -GRIB $fname1
     wgrib2 $postdirx12/$file -match ":$field2" -match ":$field3" -append -GRIB $fname1s
   else
     wgrib2 $postdirx12/$file -match ":$field1" -match ":$field3" -append -GRIB $fname1
     wgrib2 $postdirx12/$file -match ":$field2" -match ":$field3" -append -GRIB $fname1s
   fi

  let ix=ix+1
done      # while

#---- ndate -6  ==> "12z"

let istart1=1
let iend1=6

let ix=$istart1

while [ $ix -le $iend1 ]; do
  let i2=ix

  # typeset -Z2 i2
  # file=NATLEV${i2}.tm00
  typeset -Z3 i2
  file=rrfs.t12z.natlevf${i2}.tm00.grib2

   if [ $i2 -eq $istart1 ]; then
     wgrib2 $postdirx06/$file -match ":$field1" -match ":$field3" -append -GRIB $fname1
     wgrib2 $postdirx06/$file -match ":$field2" -match ":$field3" -append -GRIB $fname1s
   else
     wgrib2 $postdirx06/$file -match ":$field1" -match ":$field3" -append -GRIB $fname1
     wgrib2 $postdirx06/$file -match ":$field2" -match ":$field3" -append -GRIB $fname1s
   fi

  let ix=ix+1
done      # while


#===== O3 8hr max

#---- ndate -24  ==> "18z"

let istart2=4   # extra hourly for O3 8 hours max calculation
let iend2=6

let ix=$istart2

while [ $ix -le $iend2 ]; do
  let i2=ix

  # typeset -Z2 i2
  # file=NATLEV${i2}.tm00
  typeset -Z3 i2
  file=rrfs.t18z.natlevf${i2}.tm00.grib2

   if [ $i2 -eq $istart2 ]; then
     wgrib2 $postdirx24/$file -match ":$field2" -match ":$field3" -GRIB $fname1x
   else
     wgrib2 $postdirx24/$file -match ":$field2" -match ":$field3" -append -GRIB $fname1x
   fi

  let ix=ix+1
done      # while


#---- ndate -18  ==> "00z"

let istart2=1   # extra hourly for O3 8 hours max calculation
let iend2=6

let ix=$istart2

while [ $ix -le $iend2 ]; do
  let i2=ix

  # typeset -Z2 i2
  # file=NATLEV${i2}.tm00
  typeset -Z3 i2
  file=rrfs.t00z.natlevf${i2}.tm00.grib2

   if [ $i2 -eq $istart2 ]; then
     wgrib2 $postdirx18/$file -match ":$field2" -match ":$field3" -append -GRIB $fname1x
   else
     wgrib2 $postdirx18/$file -match ":$field2" -match ":$field3" -append -GRIB $fname1x
   fi

  let ix=ix+1
done      # while

#---- ndate -12  ==> "06z"

let istart2=1   # extra hourly for O3 8 hours max calculation
let iend2=6

let ix=$istart2

while [ $ix -le $iend2 ]; do
  let i2=ix

  # typeset -Z2 i2
  # file=NATLEV${i2}.tm00
  typeset -Z3 i2
  file=rrfs.t06z.natlevf${i2}.tm00.grib2

   if [ $i2 -eq $istart2 ]; then
     wgrib2 $postdirx12/$file -match ":$field2" -match ":$field3" -append -GRIB $fname1x
   else
     wgrib2 $postdirx12/$file -match ":$field2" -match ":$field3" -append -GRIB $fname1x
   fi

  let ix=ix+1
done      # while

#---- ndate -6  ==> "12z"

let istart2=1   # extra hourly for O3 8 hours max calculation
let iend2=6

let ix=$istart2

while [ $ix -le $iend2 ]; do
  let i2=ix

  # typeset -Z2 i2
  # file=NATLEV${i2}.tm00
  typeset -Z3 i2
  file=rrfs.t12z.natlevf${i2}.tm00.grib2

   if [ $i2 -eq $istart2 ]; then
     wgrib2 $postdirx06/$file -match ":$field2" -match ":$field3" -append -GRIB $fname1x
   else
     wgrib2 $postdirx06/$file -match ":$field2" -match ":$field3" -append -GRIB $fname1x
   fi

  let ix=ix+1
done      # while


#---- current cycle (part of day1 & full day2)

#=== Day1 part from current cycle

let istart=1
let iend=10

echo $iend >> meta_time-step.txt

let i=$istart

while [ $i -le $iend ]; do
  let i2=i

  # typeset -Z2 i2
  # file=NATLEV${i2}.tm00
  typeset -Z3 i2
  file=rrfs.t${CYC}z.natlevf${i2}.tm00.grib2

   if [ $i2 -eq $istart ]; then
     wgrib2 $postdir/$file -match ":$field1" -match ":$field3" -append -GRIB $fname1
     wgrib2 $postdir/$file -match ":$field2" -match ":$field3" -append -GRIB $fname1s
     wgrib2 $postdir/$file -match ":$field2" -match ":$field3" -append -GRIB $fname1x
   else
     wgrib2 $postdir/$file -match ":$field1" -match ":$field3" -append -GRIB $fname1
     wgrib2 $postdir/$file -match ":$field2" -match ":$field3" -append -GRIB $fname1s
     wgrib2 $postdir/$file -match ":$field2" -match ":$field3" -append -GRIB $fname1x
   fi

  let i=i+1
done      # while


#========================================
#=== Day2 full

let istart=11
let iend=34

echo $istart >> meta_time-step.txt
echo $iend   >> meta_time-step.txt

let i=$istart

while [ $i -le $iend ]; do
  let i2=i

  # typeset -Z2 i2
  # file=NATLEV${i2}.tm00
  typeset -Z3 i2
  file=rrfs.t${CYC}z.natlevf${i2}.tm00.grib2

   if [ $i2 -eq $istart ]; then
     wgrib2 $postdir/$file -match ":$field1" -match ":$field3"  -GRIB $fname2
     wgrib2 $postdir/$file -match ":$field2" -match ":$field3"  -GRIB $fname2s
   else
     wgrib2 $postdir/$file -match ":$field1" -match ":$field3" -append -GRIB $fname2
     wgrib2 $postdir/$file -match ":$field2" -match ":$field3" -append -GRIB $fname2s
   fi

  let i=i+1
done      # while

#===== O3 8hr max

let istart=4
let iend=34

let i=$istart

while [ $i -le $iend ]; do
  let i2=i

  # typeset -Z2 i2
  # file=NATLEV${i2}.tm00
  typeset -Z3 i2
  file=rrfs.t${CYC}z.natlevf${i2}.tm00.grib2

   if [ $i2 -eq $istart ]; then
     wgrib2 $postdir/$file -match ":$field2" -match ":$field3"  -GRIB $fname2x
   else
     wgrib2 $postdir/$file -match ":$field2" -match ":$field3" -append -GRIB $fname2x
   fi

  let i=i+1
done      # while


#========================================
#=== Day3 full

let istart=35
let iend=58

echo $istart >> meta_time-step.txt
echo $iend   >> meta_time-step.txt

let i=$istart

while [ $i -le $iend ]; do
  let i2=i

  # typeset -Z2 i2
  # file=NATLEV${i2}.tm00
  typeset -Z3 i2
  file=rrfs.t${CYC}z.natlevf${i2}.tm00.grib2

   if [ $i2 -eq $istart ]; then
     wgrib2 $postdir/$file -match ":$field1" -match ":$field3"  -GRIB $fname3
     wgrib2 $postdir/$file -match ":$field2" -match ":$field3"  -GRIB $fname3s
   else
     wgrib2 $postdir/$file -match ":$field1" -match ":$field3" -append -GRIB $fname3
     wgrib2 $postdir/$file -match ":$field2" -match ":$field3" -append -GRIB $fname3s
   fi

  let i=i+1
done      # while

#===== O3 8hr max

let istart=28
let iend=58

let i=$istart

while [ $i -le $iend ]; do
  let i2=i

  # typeset -Z2 i2
  # file=NATLEV${i2}.tm00
  typeset -Z3 i2
  file=rrfs.t${CYC}z.natlevf${i2}.tm00.grib2

   if [ $i2 -eq $istart ]; then
     wgrib2 $postdir/$file -match ":$field2" -match ":$field3"  -GRIB $fname3x
   else
     wgrib2 $postdir/$file -match ":$field2" -match ":$field3" -append -GRIB $fname3x
   fi

  let i=i+1
done      # while

#################################################
