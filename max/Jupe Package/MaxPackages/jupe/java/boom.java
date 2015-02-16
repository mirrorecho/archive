import com.cycling74.max.*;
import java.io.*; // all this really needed?
//import java.lang.reflect.UndeclaredThrowableException;

public class boom extends MaxObject
{

    private static final String[] INLET_ASSIST = new String[]{
        "inlet 1 help"
    };
    private static final String[] OUTLET_ASSIST = new String[]{
        "outlet 1 help"
    };
    
    public boom(Atom[] args)
    {
        declareInlets(new int[]{DataTypes.ALL});
        declareOutlets(new int[]{DataTypes.ALL});
        
        setInletAssist(INLET_ASSIST);
        setOutletAssist(OUTLET_ASSIST);

    }
    public void bang()
    {
    //  String[] cmd = new String[] { "C:\\Program Files (x86)\\LilyPond\\usr\\bin\\lilypond", "C:\\Ran\\Code\\Treasure\\Jupe\\0.6\\jupe.ly\\ly\\lylyab2.ly" };
//post("Yo Mama");
    //Process p = new ProcessBuilder("C:\\Program Files (x86)\\LilyPond\\usr\\bin\\lilypond.exe", "C:\\Ran\\Code\\Treasure\\Jupe\\0.6\\jupe.ly\\ly\\lylyab2.ly");
//Process p = new ProcessBuilder("C:\\Program Files (x86)\\LilyPond\\usr\\bin\\lilypond.exe", "C:\\Ran\\Code\\Treasure\\Jupe\\0.6\\jupe.ly\\ly\\lylyab2.ly");
//  ProcessBuilder pb = new ProcessBuilder("cmd.exe", "C:\\Program Files (x86)\\LilyPond\\usr\\bin\\lilypond.exe",  "C:\\Ran\\Code\\Treasure\\Jupe\\0.6\\jupe.ly\\ly\\lylyab2.ly");



        try {

            
			//ArrayList<String> myCommandList = new ArrayList();
		     // myCommandList.add("C:\\Program Files (x86)\\LilyPond\\usr\\bin\\lilypond.exe");
		     // myCommandList.add("C:\\Ran\\Code\\Treasure\\Jupe\\0.6\\jupe.ly\\ly\\lylyab2.ly");
			ProcessBuilder pb = new ProcessBuilder("C:\\Program Files (x86)\\LilyPond\\usr\\bin\\lilypond.exe", "C:\\Ran\\Code\\Treasure\\Jupe\\0.6\\jupe.ly\\ly\\lylab2.ly");
			//ProcessBuilder pb = new ProcessBuilder("C:\\Ran\\Code\\Treasure\\Jupe\\0.6\\jupe.ly\\ly\\lylab2.ly");
            //pb.command(["e",  "y"]);
            //String output = runProcess(pb);
            String output = "Success: " + pb.command();
            Process p = pb.start();
            p.waitFor();
			//System.out.println("Process exited with code = " + rt.exitValue());
        // Get process' output: its InputStream
        java.io.InputStream is = p.getInputStream();
        java.io.BufferedReader reader = new java.io.BufferedReader(new InputStreamReader(is));
        // And print each line
        String s = null;
        while ((s = reader.readLine()) != null) {
            post(s);
        }
        is.close();
            post(output);           
        } catch (IOException ex) {
    
                 // we can't simply declare this exception on our run method 

                 // since it's not declared on the superclass's run method,
    
                 // so we wrap it in an unchecked exception to pass it on 
    
                 // up the stack...
    
                 //throw new UndeclaredThrowableException(ex, "I/O Error reading line.");                
            post("I/O Exception.");

        } catch (InterruptedException ex) {
            post("Interrupted Exception.");
        }


/*
        try  
        {  
      pb.redirectErrorStream(true);     
        Process process = pb.start();  
        process.waitFor();  
//        OutputStream stdin = process.getOutputStream();  
//        InputStream stderr = process.getErrorStream();  
//        InputStream stdout = process.getInputStream();     
//        BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(stdin));    
//        writer.write("dir"+"\n");  
//        writer.flush();  
//        writer.close();  
        }  catch (Exception e) {
       post("Caught IOException: " + e.getMessage());
        }
*/



//        Process p = Runtime.getRuntime().exec(cmd);
// Runtime.getRuntime().exec("C:\\Program Files (x86)\\LilyPond\\usr\\bin\\lilypond.exe");
       // p.waitFor();
    }
    
    /*
public String runProcess(ProcessBuilder processBuilder) throws IOException, InterruptedException {

         //ByteArrayOutputStream baos = null;

         try {

             //baos = new ByteArrayOutputStream();                                                            
    
             // start the process...

             //Process p = processBuilder.start();             
    
             // redirect the streams so that our process doesn't block...

             //ThreadedInputStreamRedirector errorStr = new ThreadedInputStreamRedirector(p.getErrorStream(), baos);

             //ThreadedInputStreamRedirector outputStr = new ThreadedInputStreamRedirector(p.getInputStream(), baos);

             //errorStr.start();

             //outputStr.start();
    
             // wait for the process to finish...

            // p.waitFor();

            // baos.flush();

             //return baos.toString();                    
    
         } finally {

             //if (baos != null) baos.close();
    
         }        

     }
     */

/*
 public class ThreadedInputStreamRedirector extends Thread {
     private final InputStream inputStream;          
    

     public ThreadedInputStreamRedirector(InputStream inputStream) {
         this.inputStream = inputStream;
     }                
    
     @Override
    

    
     public void run() {

         BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.inputStream));            

         String line = null;

         do {            
    
             try {

                 line = bufferedReader.readLine();                

             } catch (IOException ex) {
    
                 // we can't simply declare this exception on our run method 

                 // since it's not declared on the superclass's run method,
    
                 // so we wrap it in an unchecked exception to pass it on 
    
                 // up the stack...
    
                 throw new UndeclaredThrowableException(ex, "I/O Error reading line.");                

             }  
    
 

             if (line == null) break;
    
             System.out.println(line);

         } while (true);            

     }                      
    
 }
 */



    public void inlet(int i)
    {
    }
    
    public void inlet(float f)
    {
    }
    
    
    public void list(Atom[] list)
    {
    }
    
}












