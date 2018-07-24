import java.util.*;

public class data{
	// variables
	int max = 300;
	int val_stock[] = {4,5,6};
	int num_stock[] = {4,5,6};
	Hashtable<String,Integer> stocks;
	String stock_list[] = {"eggs", "bread", "soda","gDumps"};
	// functions
	int set_val_stock() { return 5; }; // set the value of each stock in val_stock
	int set_num_stock() { return 5; }; // set the value of each stock in num_stock
	int get_val_stock() { return 5; }; // get the value of each stock in val_stock
	int get_num_stock() { return 5; }; // get the value of each stock in num_stock
	public void data() {
	stocks = new Hashtable<String, Integer>();
	}
}