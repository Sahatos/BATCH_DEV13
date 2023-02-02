public class CandidateVitap1 {
    public String Name ;
    public String Gender ;
    public static String CompanyName ;
    public static integer countCandidates = 0;

    public CandidateVitap1 () {
        countCandidates ++;
    }

    
       
    public  void printCandidate() {
        System.debug('------ START---------');
        System.debug('Candidate Name is ' + Name + ' ( ' + Gender + ' ) ' );
        System.debug( ' Company Name is ' + CompanyName);
        System.debug(' ------- END-------');

    }
    public static void printCompany() {
        system.debug('company name ==> ' + companyName);
    }
}