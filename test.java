public class test 
{
    public static void main(String[] args)
    {
        Integer z = 1;
        Integer x = 2;
        Integer y = 0;
        for (int i = 0; i<y; i++)
        {
            for (int j = 1; j<x; j++)
            {
                z += z;
                System.out.println("i: " + i + ", j: " + j + ", z: " + z);
            }
        }
        System.out.println("Z final: " + z);
    }
    

}
