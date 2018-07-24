public class player{
	// variables
	double bobucks;
	// could use hashtable for this, probably better if so
	ArrayList<String> player_stocks = new ArrayList<String>(); // one to many relationship w/ player and stocks
	ArrayList<Integer> player_num_stocks = new ArrayList<Integer>(); // one to many relationship w/ player and his number of each stock
	// functions
	double getBoBucks() { return bobucks; };
	String displayStocks(){
	 return " player stocks" ;};
	double invest(String a, double r) {
		int temp; // marks the placement of the stock in the market list
		int size = 5; // size of the arraylist of stocks: temporary value of 5, needs fixing, could not get the size of arraylist to run
		if (bobucks >= r){ // Situation 1
			bobucks -= r;
			for (int i  = 0; i < size; i++){ // find stock in stocklist with same name as arguement a
				if (a == market.stockList.get(i).getName()){
					temp = i;
					String stockName = market.stockList.get(temp).getName();	
					player_stocks.add(stockName); // adds stock to player's portfolio
					int val_one_stock = market.stockList.get(i).getListPrice();
					int num_of_stocks_purchased = investment_value/r; // rounded down
					player_num_stocks.add(num_of_stocks_purchased);
				}
				else{
					System.out.println(" Error: Invalid Input. ");
					exit(1);
				}
			}
		}
		else if (bobucks < r){ // Situation 2
			System.out.println(" Error: Invalid Input. Please try again. ");
		}
		else{ // Situation 3
			System.out.println(" Error: Invalid Input. ");
			exit(1);
		}
		
		return 5;
	} // subtracts from balance and adds to stock list a number of specific stocks
	double sell(String a, double r){return 5;}; // removes specific number of stocks from list and converts to currency

}