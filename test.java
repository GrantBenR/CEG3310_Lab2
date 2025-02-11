public class test 
{
    public static void main(String[] args)
    {
        Integer z = 0;
        Integer x = 2;
        Integer y = 0;
        Integer k = 0;
        k=x;
        for (int i = 0; i<y; i++)
        {
            for (int j = 1; j<x; j++)
            {
                z += k;
                System.out.println("i: " + i + ", j: " + j + ", z: " + z);
            }
            k = z;
        }
        System.out.println("Z final: " + z);
    }
    

}
