class Foo{

    // FIXME-begin
    public static class MyBuilder {
        private int p1;
        private int p2;
        private int p3;
        private int p4;

        public MyBuilder() {
            this.p1 = 1;
            this.p2 = 2;
            this.p3 = 3;
            this.p4 = 4;

        }

        public MyBuilder withP1(int p1_){
            this.p1 = p1_;
            return this;
        }

        public MyBuilder withP2(int p2_){
            this.p2 = p2_;
            return this;
        }

        public MyBuilder withP3(int p3_){
            this.p3 = p3_;
            return this;
        }

        public MyBuilder withP4(int p4_){
            this.p4 = p4_;
            return this;
        }
 

        public Foo build(){
            Foo res = new Foo();

            res.p1 = this.p1;
            res.p2 = this.p2;
            res.p3 = this.p3;
            res.p4 = this.p4;

            return res;
        }        
    }
    
    public static MyBuilder builder(){
        return new MyBuilder();
    }
    // FIXME-end

    public int getP1(){
        return p1;
    }
    public int getP2(){
        return p2;
    }
    public int getP3(){
        return p3;
    }
    public int getP4(){
        return p4;
    }

    private int p1;
    private int p2;
    private int p3;
    private int p4;
}
public class Main{

     public static void main(String []args){
        {
            Foo f = Foo.builder()
                       .build();
            System.out.println(f.getP1());
            System.out.println(f.getP2());
            System.out.println(f.getP3());
            System.out.println(f.getP4());
            System.out.println("----");
        }
        {
            Foo f = Foo.builder()
                       .withP4(8)
                       .withP1(3)
                       .build();
            System.out.println(f.getP1());
            System.out.println(f.getP2());
            System.out.println(f.getP3());
            System.out.println(f.getP4());
        }
     }
}
