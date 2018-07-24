public class market extends data{
	// variables
	String marketName; //unique market name
	ArrayList<stock> stockList; //list of all possible stocks
	HashMap<String,int[]> stockInfo; //key = name of stocks. value = integer array. 0 = number available
	//cont. 1 = price of stock

	// functions
	public market() {
		stockList = new ArrayList<stock>();
		stockInfo = new HashMap<String,int[]>(); 
	}

	//get market name
	String getName() {return marketName;}
	//set market name
	void setName(String name) {marketName = name;}

	//get entire stockList
	ArrayList<stock> getAllListing(){return stockList;}

	//get element of stockList
	stock getStock(int index) {return stockList.get(index);}

	//add stock to list
	void addStock(stock myStock, int[] details) {
		stockList.add(myStock);
		stockInfo.put(myStock.getName(), details);
	}
	//remove stock from list
	void removeStock(stock myStock) {
		stockList.remove(myStock);
		stockInfo.remove(myStock.getName());
	}
}