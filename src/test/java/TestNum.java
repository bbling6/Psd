public class TestNum {

    public static void main(String[] args) {
        TestNum sn = new TestNum();

        TestClient t1 = new TestClient();
        TestClient t2 = new TestClient();
        TestClient t3 = new TestClient();
        t1.start();
        t2.start();
        t3.start();
    }
}

class TestClient extends Thread {

    private static ThreadLocal<Integer> seqNum = new ThreadLocal<>();

    public int getNextNum() {
        seqNum.set(seqNum.get() + 1);
        return seqNum.get();
    }
    public void run() {
        seqNum.set(0);
        for (int i = 0; i < 10; i++) {
            System.out.println("thread[" + Thread.currentThread().getName() + "] --> sn["
                    + getNextNum() + "]");
        }
    }
}