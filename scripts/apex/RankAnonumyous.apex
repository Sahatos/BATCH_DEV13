RankHandler rh = new RankHandler ();
String p1 = rh.rankPrize(1);
system.debug( ' P1 is ' +  p1);
String p2 = rh.rankPrize(2);
system.debug( ' P2 is ' +  p2);
String p3 = rh.rankPrize(5);
system.debug( ' P3 is ' +  p3);
String p4 = rh.rankPrize(15);
system.debug( ' Rank is  ' +  p4);



RankHandler rh1 = new RankHandler ();
String ps1= rh1.rankPrizeSwitch(2);
system.debug( ' Ps1 is ' +  ps1);
String ps2 = rh1.rankPrizeSwitch(4);
system.debug( ' Ps2 is ' +  ps2);
String ps3 = rh1.rankPrizeSwitch(10);
system.debug( ' Ps3 is ' +  ps3);
String ps4 = rh1.rankPrizeSwitch(1);
system.debug( ' Rank is  ' +  ps4);

rh1.tearnaryTest();

