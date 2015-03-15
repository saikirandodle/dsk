package java4s;

import java.io.*;
import java.util.Scanner;

public class Billing {

   public static void main (String[] args) throws IOException {
 
      //  open up standard input
 	  Scanner scanner = new Scanner(new InputStreamReader(System.in)); 
	   
      int CNumber = 0;
      String CName = null;
      int PreviousReading = 0;
      int PresentReading = 0;
      int UnitsConsumed =0;
      int Unitprice =0;
      //  read the user input from the command-line.
      
      System.out.print("Enter your Number: ");
      CNumber = scanner.nextInt();
	  
      System.out.print("Enter your Name: ");
	  CName = scanner.next();
	 
	  System.out.print("Enter your Previous Meter Reading: ");
	  PreviousReading = scanner.nextInt();
	  
	  System.out.print("Enter your Present Meter Reading: ");
	  PresentReading = scanner.nextInt();
	  
	  if(PreviousReading > PresentReading)System.out.println("previous reading should be less than the current reading");
		  
	  
	  else{
	  
      System.out.println("Thanks for the Details");

      System.out.println("Calculating the bill amount........");
      
      UnitsConsumed = PresentReading - PreviousReading;
      
      if(UnitsConsumed > 150) Unitprice = 3;
       
      else Unitprice = 5;    	 
       
      int TotalBillAmount = UnitsConsumed*Unitprice;
  	  System.out.println("\n Andhrapradesh Central Power Distribution Company Limited Hyderabad\n ------------------------------------------------------------------");
  	  System.out.println(" Customer Number: "+CNumber+"\n Customer Name: "+CName+"\n UnitsConsumed: "+UnitsConsumed+"\n Amount: "+TotalBillAmount);
   }
   }
}  // end of class
