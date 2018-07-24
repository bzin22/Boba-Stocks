public class market extends data{
	// variables
	double popularity;
	double exchangeRate;
	String stock_list[] = {"eggs", "bread", "soda"};
	int store_value[];
	ArrayList<String> arraylist = new ArrayList<String>();
	// functions
	double setExchanceRate(){return 5;}; // code pulls the exchange rate from server
	double getExchangeRate(){return 5;};
}