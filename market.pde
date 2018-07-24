public class market{
	// variables
	String marketName; //unique market name
	ArrayList<stock> stockList; //list of all possible stocks

	// functions
	public market() {
		//initialze
		stockList = new ArrayList<stock>();
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
	void addStock(stock myStock) {
		stockList.add(myStock);
	}
	//remove stock from list
	void removeStock(stock myStock) {
		stockList.remove(myStock);
	}

	//
}