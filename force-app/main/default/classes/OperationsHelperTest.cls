@isTest
public class OperationsHelperTest {
    @isTest
    public static void TestMethod1() {
        Decimal d1 =10;
        Decimal d2 = 5;
        Decimal d3 = 10;
        test.startTest();
        Decimal result= new OperationsHelper().largestOutOfTwoNumbers(d1,d2);
        test.stopTest();
        Assert.areEqual( d3, result);
    }
    @isTest
    public static void TestMethod2() {
        Decimal d1 =10;
        Decimal d2 = 5;
        Decimal d3 = 3;
        decimal d4 =3;

        test.startTest();
        Decimal result= new OperationsHelper().smallestOutOfThreeNumbers(d1,d2,d3);
       
        Assert.areEqual( d4, result);
        test.stopTest();

  }
  @isTest
    public static void TestMethod3() {
        integer n = 7 ;
        integer n1 = 21;
        test.startTest();
        integer result= new OperationsHelper().sumOfPositiveInteger(n);
        Assert.areEqual( n1, result);
        test.stopTest();

}
}
