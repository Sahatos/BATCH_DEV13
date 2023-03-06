@isTest
public class CaseTriggerHandler2Test {
   @isTest
    public static void testmetods1() {
       
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

       
       list<case> childCase =[Select id from case];

       assert.areEqual(400, childCase.size());

    }

    @isTest
    private static void testCreateChildNo(){
        list<case> listCase2 = new list<case>();
        for (Integer i = 0; i < 200; i++) {
            Case case2 = new case();
            case2.Status = ' New';
            case2.Origin = 'Web';
            case2.Description = 'Test';
            case2.Priority = 'High';
            listCase2.add(case2);
            
        }
        insert listCase2;

        list<case> childCase =[Select id from case];

       assert.areEqual(200, childCase.size());
    }
}