list <String> liststr = new list <String>();
liststr.add(' sound is good');
liststr.add(' ok ');
liststr.add(' methods ');
liststr.add(' clear ');
liststr.add(' 🙌');
//left side -> defining new variable, which we can use inside for loop.
    //new variable(eachStr), will automatically get one by one value from the list.
//right side -> list variable name.
String concanateStg = ''; 
for ( String eachstr: liststr ){
    System.debug(eachstr);
    concanateStg +=  ' || ' + eachstr;
    // concanateStg = concanateStg + ' || ' + eachstr;
    
}
System.debug( concanateStg );


