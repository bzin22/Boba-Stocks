public class market extends data{
	// variables
	double popularity;
	double exchangeRate;
	ArrayList<Integer> store_value;
	ArrayList<String> stock_list;
	// functions
	public market() {
		store_value = new ArrayList<Integer>();
		stock_list = new ArrayList<String>();
		stock_list.add("gDumps");
		store_value.add(50);
		popularity = Math.random()*7;
		exchangeRate = Math.random();
	}
	void setExchangeRate(double er){exchangeRate = er;}; // code pulls the exchange rate from server
	double getExchangeRate(){return exchangeRate;};
}