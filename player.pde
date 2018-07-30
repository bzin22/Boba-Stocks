public class player{
	// variables
	
	double bobucks;
	// could use hashtable for this, probably better if so
	ArrayList<String> player_stocks = new ArrayList<String>(); // one to many relationship w/ player and stocks
	ArrayList<Integer> player_num_stocks = new ArrayList<Integer>(); // one to many relationship w/ player and his number of each stock
	// functions
	double getBoBucks() { return bobucks; };

	String displayStocks(){ return " player stocks" ;};

	double invest(String a, double r) { // subtracts from balance and adds to stock list a number of specific stocks
		boolean onTheMarket = false; // checks if the stock in which the player invests in is on the market
		int temp; // marks the placement of the stock in the market list
		int size = 2; // size of the arraylist of stocks: temporary value of 5, needs fixing, could not get the size of arraylist to run
		if (bobucks >= r){ // Situation 1
			bobucks -= r; // update the player's balance
			for (int i  = 0; i < size; i++){ // find stock in stocklist with same name as arguement a
				if (a == market.stockList.get(i).getName()){
					onTheMarket = true;
					temp = i;
					String stockName = market.stockList.get(temp).getName();	
					player_stocks.add(stockName); // adds stock to player's portfolio
					int val_one_stock = market.stockList.get(i).getListPrice();
					int num_of_stocks_purchased = investment_value/r; // rounded down
					player_num_stocks.add(num_of_stocks_purchased);
				}
			}
			if (onTheMarket == false){
				System.out.println(" Error: Invalid Input. ");
				exit(1);
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
	}

	double sell(String a, double r){ // removes specific number of stocks from list and converts to currency
		// Situation 1: specified stock is in player's portfolio and can be sold
		if (player_stocks.contains(a)){
			int finder; // find the corresponding number of stocks to a
			for (int i = 0; i < player_stocks.length; i++){
				if (player_stocks[i] == a)
					finder = i;
			}
			if (r <= player_num_stocks[i]){
				// execute sell
			}
		}
		// all other bogus that will try to troll us
		else{
			System.out.println(" Error: Invalid Input. Please try again. "); // in the future, we will inform user what the error was
		}
		return 5;
	}; 
	
}