import javagroup18.*;

public class Fill_Avail{
    public static void main(String[] args) {
        System.out.println("Hello");
        Availability av = new Availability();
        try {
            for (int f = 18; f < 42;f++){
                for (int i = 2; i < 9;i++){
                    String s = "2020-12-0";
                    s =  s + String.valueOf(i);
                    String h;
                    for (int j = 14; j < 23;j++){
                        h = String.valueOf(j);
                        h = h + ":00";
                        av.Fill_Availability(f,s,h,0);
                    }
                }
                System.out.println(f + "Done");
            }
        } catch (Exception e) {
        }
    }   
}