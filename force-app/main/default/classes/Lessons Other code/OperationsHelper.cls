public class OperationsHelper {
    public decimal largestOutOfTwoNumbers(decimal x, decimal y){
        decimal largestNumber;
        if(x>=y){
            largestNumber=x;
        }else{
           largestNumber=y;
        }
        return largestNumber;
    }
    public decimal smallestOutOfThreeNumbers(decimal a, decimal y, decimal z){
        decimal smallerNumber=math.min(a, y);
        decimal smallestNumber=math.min(smallerNumber, z);
        return smallestNumber;
    }
    public integer sumofPositiveIntegers(integer n){
        integer sum;
        if(n<0){
            sum=null;
            system.debug('We are not calculatiing the sum for negative numbers');
        }else{
            sum=0;
            for (Integer i = 0; i <= n; i++) {
                sum=sum+i;
            }
        }
        return sum;
}
}