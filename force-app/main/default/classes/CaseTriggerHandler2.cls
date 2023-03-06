public class CaseTriggerHandler2 {
    public static void createChildCase(list<Case> caseTriggerNew) {
        List<Case> newChildCase = new list<Case>();
        for (Case eachCase : caseTriggerNew) {
            if (eachCase.Description != null && eachCase.Description.containsIgnoreCase('password')) {
                case cs = new case();
                cs.Subject = 'Parent Case may contain secret info, do something NOW';
                cs.ParentId = eachCase.Id;
                cs.Priority = 'High';
                cs.Description = 'Secret info not allowed in case';
                cs.Status = 'New';
                cs.Origin = 'Web';
                newChildCase.add(cs);
            }
        }
        if (!newChildCase.isEmpty()) {
            insert newChildCase;
        }
    }
}