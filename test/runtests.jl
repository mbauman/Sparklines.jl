using Sparklines
using Base.Test

# Original tests from https://github.com/holman/spark/blob/master/spark-test.sh
# Copyright (c) Zach Holman, http://zachholman.com, MIT license

@test sprint(spark, [1,5,22,13,5])                == "▁▂█▅▂"
@test sprint(spark, [0,30,55,80,33,150])          == "▁▂▃▄▂█"
@test sprint(spark, [5.5,20])                     == "▁█"
@test sprint(spark, [1,2,3,4,100,5,10,20,50,300]) == "▁▁▁▁▃▁▁▁▂█"
@test sprint(spark, [1,50,100])                   == "▁▄█"
@test sprint(spark, [2,4,8])                      == "▁▃█"
@test sprint(spark, [1,2,3,4,5])                  == "▁▂▄▆█"

@test sprint(sparkln, [1,2,3,4,5])                == "▁▂▄▆█\n"
