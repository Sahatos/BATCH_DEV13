// trigger AccountTrigger on Account (before insert, before update,after insert, after update) {

//       System.debug('______ Trigger start _____ ' + trigger.operationType + ' durumu icin basladi '  );
//     //   if (Trigger.isAfter) {
//     //     system.debug('after insert/update new trigger --> ' + trigger.new);
//     //   }
//     //     System.debug('  Trigger End_____ ' + trigger.operationType + ' durumu icin sonlandi ');


//     }

    //isAfter will be true in 'after insert' and 'after update' trigger
 
// //     trigger AccountTrigger on Account (before insert, before update,after insert, after update) {     
// //      System.debug('______ Trigger start _____ ' + trigger.operationType + ' durumu icin basladi '  );
// //      List<Account> newAccounts = trigger.new;

// //         if(Trigger.isAfter) {
// //         //trigger.new we get latest inserted/updated records
// //         system.debug('after trigger, new data --> ' + newAccounts);
// //         system.debug('number of records inserted/updated: ' + newAccounts.size() );
// // }

// // }
// //  trigger AccountTrigger on Account (before insert, before update,after insert, after update) {     
// //     System.debug('______ Trigger start _____ ' + trigger.operationType + ' durumu icin basladi '  );
// //     List<Account> newAccounts = trigger.new;

// //        if(Trigger.isAfter) {
// //        //trigger.new we get latest inserted/updated records
// //        system.debug('after trigger, new data --> ' + newAccounts);
// //        system.debug('number of records inserted/updated: ' + newAccounts.size() );

// //        for (Account eachAccount : newAccounts) {
// //         System.debug(' New account id is ' + eachAccount.Id + ' New account name is ' + eachAccount.Name + ' Type' + eachAccount.type);

// //      }

// //     }
// //             System.debug('  Trigger End_____ ' + trigger.operationType + ' durumu icin sonlandi ');

// // }
// trigger AccountTrigger on Account (before insert, before update,after insert, after update) {
//   if (Trigger.isBefore && Trigger.isInsert) {
//           system.debug('trigger.new before insert --> ' + trigger.new); // valuse is present but ID is null
//       }
  
//       if (Trigger.isafter && Trigger.isInsert) {
//           system.debug('trigger.new after insert --> ' + trigger.new);// value is present ID is not null
//       }
  
//       if (Trigger.isBefore && Trigger.isUpdate) {
//           system.debug('trigger.new before udpate --> ' + trigger.new);// same just timeline
//       }
  
//       if (Trigger.isafter && Trigger.isUpdate) {
//           system.debug('trigger.new after update --> ' + trigger.new);// same records 
//       }
//     }




















    //  Map<Id,account> trgNewMap = trigger.newMap;
    //  Map<Id,account> trgOldMap = trigger.oldMap;

    //  if (Trigger.isAfter&& Trigger.isUpdate) {
    //     System.debug(' after update ');

    //     Set<id> accIds = trgNewMap.keySet();
    //     Set<id> accIdsOld = trgOldMap.keySet();

    //     for (Id eachId :  accIds) {
    //         System.debug(' ----for each start--- ');
    //         System.debug(' each id is  ' + eachId);


    //         Account newAcc = trgNewMap.get(eachId);
    //         Account oldAcc = trgOldMap.get(eachId); 
    //         System.debug( ' new acc name is '+ newAcc.name + ' it old name was ' + oldAcc.name );

    //         

            
    //     }


        
    //  }


     

    //  if (Trigger.isBefore && Trigger.isInsert ) {
    //     system.debug('==BEFORE INSERT==');
    //     system.debug('trigger.newMap -> ' + trgNewMap); //null -> ID is null, so Map<id, account> is ALSO NULL.
    //     system.debug('trigger.oldMap -> ' + trgoldMap); //null --> OLD is NULL.
    // }

    // if (Trigger.isAfter && Trigger.isInsert ) {
    //     system.debug('==AFTER INSERT==');
    //     system.debug('trigger.newMap -> ' + trgNewMap);//yes (not null)
    //     system.debug('trigger.oldMap -> ' + trgoldMap);//null -> no old record so oldmap is null.
    // }

    // if (Trigger.isBefore && Trigger.isUPdate ) {
    //     system.debug('==BEFORE Update==');
    //     system.debug('trigger.newMap -> ' + trgNewMap); //yes
    //     system.debug('trigger.oldMap -> ' + trgoldMap); //yes
    // }

    // if (Trigger.isAfter && Trigger.isUpdate ) {
    //     system.debug('==AFTER UPDATE==');
    //     system.debug('trigger.newMap -> ' + trgNewMap); //yes
    //     system.debug('trigger.oldMap -> ' + trgoldMap); //yes
    

      
//--------------------------------------------------------------







    //   if (Trigger.isBefore && Trigger.isInsert) {
    //     // Old is null insert

    //     system.debug('trigger.new before insert --> ' + trigger.old);     }

    // if (Trigger.isafter && Trigger.isInsert) {
    //     //Old is null insert
    //     system.debug('trigger.new after insert --> ' + trigger.old);
    // }

    // if (Trigger.isBefore && Trigger.isUpdate) {
    //     system.debug('trigger.new before udpate --> ' + trigger.old);
    // }

    // if (Trigger.isafter && Trigger.isUpdate) {
    //     system.debug('trigger.new after update --> ' + trigger.old);
    // }

//--------------------------------------------------------------------------02/14/23
     
      

    
           

      
//----------------------------------------------------------------------------------02.14.2023


//-----------------------------------------------------------------------------------------------------



    //   if(Trigger.isBefore){
    //     System.debug( ' we are before trigger called 1');
    //     if (Trigger.isInsert) {
    //         System.debug('we are Before Insert called 2');

    //     } 
    //      if (Trigger.isUpdate) {
    //         System.debug(' we are Before Updated 3 ');
    //      }

    //  } if(Trigger.isAfter){
    //     System.debug( ' we are AFTER trigger 4 ');
    //     if (Trigger.isInsert) {
    //         System.debug('we are after Insert 5');

    //     } 
    //      if (Trigger.isUpdate) {
    //         System.debug(' we are after Updated 6');
    //      }






    //   if(Trigger.isBefore && Trigger.isInsert){
    //     system.debug('before insert trigger called.');
    // }
    // if(Trigger.isAfter && Trigger.isInsert){
    //     system.debug('after insert trigger called.');
    // }
    // if(Trigger.isBefore && Trigger.isUpdate){
    //     system.debug('before update trigger called.');
    // }
    // if(Trigger.isAfter && Trigger.isUpdate){
    //     system.debug('after update trigger called.');
    // }
    

        
    //   system.debug('.isBefore --> ' + Trigger.isInsert);
    //   system.debug('.isUpdate --> ' + Trigger.isUpdate);
    //   System.debug('------------ ');

    //   if (Trigger.isInsert){
    //     System.debug(' Before insert account trigger called ');

    //   }
    //    if (Trigger.isUpdate){
    //     System.debug(' Before update account trigger called ');

    //    }
    //    System.debug('====== Trigger ending ====== ');
 
       
    
    
    
    
    //   if (Trigger.isBefore){
    //     System.debug(' Before insert account trigger called ');

    //   }

    //   if (Trigger.isAfter){
    //     System.debug(' After insert account trigger called ');


    //  }
    

    trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
        system.debug('--- trigger start ----');
        if (Trigger.isBefore) {
            AccountTriggerHandler.updateDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        }
        if (Trigger.isAfter && Trigger.isUpdate) {
            //call VIP update method.
            AccountTriggerHandler.updateVIPForAllContact(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        }
    
    
    }
    