public class player{
	// variables
	double bobucks;
	ArrayList<String> player_stocks = new ArrayList<String>(); // one to many relationship with player and stocks
	// functions

	double getBoBucks() { return bobucks; };
	String displayStocks(){
	 return " player stocks" ;};
	double invest(String a, double r) {return 5;}; // subtracts from balance and adds to stock list a number of specific stocks
	double sell(String a, double r){return 5;}; // removes specific number of stocks from list and converts to currency

}