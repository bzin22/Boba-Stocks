
public class stock {
	String stockName; //unique name of stock
	int listingPrice; //price of stock
	int numOnMarket; //number of stock available on market
	
	void stock() {
		//initialize
	}
	//returns name of stock
	String getName() {return stockName;}
	//sets name of stock
	void setName(String name) {stockName = name;}

	//returns listing price of stock
	int getListPrice() {return listingPrice;}
	//set listing price of stock
	void setPrice(int price) {listingPrice = price;}

	//returns number of stock on market
	int getQuant(){return numOnMarket;}
	//set quantity of stock on market
	void setQuant(int num) {numOnMarket = num;}

}