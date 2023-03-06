@isTest
public class caseTriggerTest {
    @isTest
    public static void caseTriggerTest() {
        list<case> listCase = new list<case>();

        for (Integer i = 0; i < 200; i++) {
            Case case1 = new case();
            case1.Status = ' New';
            case1.Origin = 'Web';
            case1.Description = 'Test Password';
            case1.Priority = 'High';
            listCase.add(case1);
    
    }
    insert listCase;
  
 }

}