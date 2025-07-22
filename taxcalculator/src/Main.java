import java.util.List;

public class Main {
    public static void main(String[] args) {
        Double v = taxCalculator(List.of(0.00, 1000.00), List.of(0.1, 0.5), 2000.00);
        System.out.println(v);
    }


    private static Double taxCalculator(List<Double> ranges,List<Double> taxBracket,Double amount)
    {
        Double tax=0.00;
        Double remainingAmount=amount;
        int rangeSize = ranges.size();
        for(int i = 0; i< rangeSize; i++){
            if (ranges.get(i)>=amount){
                return 0.00;
            }
            else if (rangeSize<=i+1){
                tax+=(remainingAmount*taxBracket.get(i));
                continue;
            } else if (i==0) {
                remainingAmount=remainingAmount-ranges.get(0);
            }

              if (remainingAmount<ranges.get(i+1)){
                  tax+=remainingAmount*taxBracket.get(i);
              }else {
                  remainingAmount-=ranges.get(i+1);
                  tax+=(ranges.get(i+1)-ranges.get(i))*taxBracket.get(i);
              }
        }
        return tax;
    }
}