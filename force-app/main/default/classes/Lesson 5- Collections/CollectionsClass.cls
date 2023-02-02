public class CollectionsClass {
    public static String listaAssignment(integer i) {


        List <String> LstMonth = new List <String>();
        LstMonth.add('January ');
        LstMonth.add('February ');
        LstMonth.add('March ');
        LstMonth.add('April ');
        LstMonth.add('May ');
        LstMonth.add('June ');
        LstMonth.add('July ');
        LstMonth.add(' August ');
        LstMonth.add('September ');
        LstMonth.add('October ');
        LstMonth.add('November');
        LstMonth.add('December');

        String outputMonth = '';
        if (i >= 0 && i < LstMonth.size()) {
            outputMonth= LstMonth [i-1];
        } else {
            outputMonth = ' Not a valid month ';
            
        }
        return outputMonth;

        


    }
}