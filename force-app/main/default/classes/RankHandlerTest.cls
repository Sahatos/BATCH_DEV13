@isTest
public class RankHandlerTest {
    @isTest
    public static void testMetodsTest1() {
        RankHandlerTestLab r1 = new  RankHandlerTestLab();
        for (Integer i = 1; i <= 3; i++) {
            String prize = r1.rankPrize(i);
            Assert.areEqual(i== 1 ?'Gold': i== 2 ? 'Silver':'Bronze',prize);
            
        }

    
      for (Integer i = 4; i <= 10; i++) {
        String prize = r1.rankPrize(i);
        Assert.areEqual('Top ten', prize);


     }
     for (Integer i = 11; i >= 11 && i <100; i++) {
        String prize = r1.rankPrize(i);
        Assert.areEqual('Participation certificate', prize);



    }


}
@isTest
    public static void testMetodsTest2() {
        RankHandlerTestLab r1 = new  RankHandlerTestLab();
        for (Integer i = 1; i <= 3; i++) {
            String prize = r1.rankPrizeSwitch(i);
            Assert.areEqual(i== 1 ?'Gold': i== 2 ? 'Silver':'Bronze',prize);
            
        }

    
      for (Integer i = 4; i <= 10; i++) {
        String prize = r1.rankPrizeSwitch(i);
        Assert.areEqual('Top ten', prize);


     }
      for (Integer i = 11; i >= 11 && i < 100; i++) {
        String prize = r1.rankPrizeSwitch(i);
        Assert.areEqual('thank you for participating', prize);



     }


    }

}