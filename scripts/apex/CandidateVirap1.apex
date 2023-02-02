CandidateVitap1.CompanyName = ' TomJerry ';
system.debug('0. number of candidates : ' + CandidateVitap1.countCandidates );

CandidateVitap1 can = new CandidateVitap1();

can.Name = ' Jerry ';
can.Gender = ' Male ';
can.printCandidate();
system.debug('1. number of candidates : ' + CandidateVitap1.countCandidates);
 
CandidateVitap1 can1 = new CandidateVitap1();

can1.Name = ' Tom ';
can1.Gender = ' Male ';
can1.printCandidate();
system.debug('2. number of candidates : ' + CandidateVitap1.countCandidates);
 
 CandidateVitap1 can2 = new CandidateVitap1();
 
can2.Name = ' Harry';
can2.Gender = ' Male ';
can2.printCandidate();
CandidateVitap1.CompanyName = ' Disney ';
system.debug('3. number of candidates : ' + CandidateVitap1.countCandidates);

can.printCandidate();