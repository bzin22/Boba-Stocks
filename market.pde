public class market{
	// variables
	String marketName; //unique market name
	ArrayList<stock> stockList; //list of all possible stocks
	int stockList_size = stockList.size(); // gives size of array list and should be updated every time a change is made to the list
	// functions
	public market() {
		//initialze
		stockList = new ArrayList<stock>();
		stock green = new stock();
		stock red = new stock();
		stockList.add(green);
		stockList.add(red);
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