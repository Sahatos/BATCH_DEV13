public class LoopDemo {
    public void print_It_While () {
        Integer count = 5 ;
         while (count <= 25) {
            system.debug(count);
            count++;
            
        }

    }
    public void print_N_numbers (Integer n) {
        for (Integer i = 0; i < n; i++) {
            system.debug(i);
        }   
        }
        public void print_N_ODD_numbers (Integer startIng, Integer endIng) {
            // startING =4
            // endIng = 94
            for (Integer i = startIng; i < endIng; i++) {
                Integer remainderI = math.mod(i, 2);
                if (remainderI==1) {
                    System.debug(i);
                }

                
            }   
            }

    }
