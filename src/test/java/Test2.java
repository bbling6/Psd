import org.junit.Test;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Test2 {
    @Test
    public void test(){
        Date currentTime = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String dateString = formatter.format(currentTime);
        System.out.println(dateString);
    }

    @Test
    public void test2(){
        ThreadLocal<Integer> seqNum = new ThreadLocal<>();
        seqNum.set(123);
        System.out.println(seqNum.get());
        seqNum.remove();
        System.out.println(seqNum.get());
    }

}
