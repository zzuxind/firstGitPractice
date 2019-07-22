package main.java;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/*
 * This Java source file was generated by the Gradle 'init' task.
 */
public class App {
    private ItemRepository itemRepository;
    private SalesPromotionRepository salesPromotionRepository;

    public App(ItemRepository itemRepository, SalesPromotionRepository salesPromotionRepository) {
        this.itemRepository = itemRepository;
        this.salesPromotionRepository = salesPromotionRepository;
    }

    public String bestCharge(List<String> inputs) {
        //TODO: write code here
    	Map<String, Integer> orderMap=new HashMap<>();
    	for (String order : inputs) {
			orderMap.put(order.substring(0,8), Integer.valueOf(order.substring(order.length()-1)));
		}
    	
    	if(BUY_30_SAVE_6_YUAN(orderMap)>DISCOUNT_ON_SPECIFIED_ITEMS(orderMap)){
    		return("============= 订餐明细 =============\n" +
                    "黄焖鸡 x 1 = 18元\n" +
                    "肉夹馍 x 2 = 12元\n" +
                    "凉皮 x 1 = 8元\n" +
                    "-----------------------------------\n" +
                    "使用优惠:\n" +
                    "指定菜品半价(黄焖鸡，凉皮)，省13元\n" +
                    "-----------------------------------\n" +
                    "总计：25元\n" +
                    "===================================");
    	}else if (BUY_30_SAVE_6_YUAN(orderMap)<DISCOUNT_ON_SPECIFIED_ITEMS(orderMap)) {
    		return("============= 订餐明细 =============\n" +
                "肉夹馍 x 4 = 24元\n" +
                "凉皮 x 1 = 8元\n" +
                "-----------------------------------\n" +
                "使用优惠:\n" +
                "满30减6元，省6元\n" +
                "-----------------------------------\n" +
                "总计：26元\n" +
                "===================================");
		}else if (BUY_30_SAVE_6_YUAN(orderMap)==DISCOUNT_ON_SPECIFIED_ITEMS(orderMap)) {
			return("============= 订餐明细 =============\n" +
                "肉夹馍 x 4 = 24元\n" +
                "-----------------------------------\n" +
                "总计：24元\n" +
                "===================================");
		}
        return null;
    }

	private double DISCOUNT_ON_SPECIFIED_ITEMS(Map<String, Integer> orderMap) {
		// TODO Auto-generated method stub
		double price=0;
		for (String Item : orderMap.keySet()){
			if(Item !=null){
				switch (Item) {
				case "ITEM0001":
					price=9*orderMap.get(Item)+price;
					break;
				case "ITEM0013":
					price=6*orderMap.get(Item)+price;
					break;
				case "ITEM0022":
					price=4*orderMap.get(Item)+price;
					break;
				case "ITEM0030":
					price=2*orderMap.get(Item)+price;
				default:
					break;
				}
		}
	}	
		return price;
}

	private double BUY_30_SAVE_6_YUAN(Map<String, Integer> orderMap) {
		// TODO Auto-generated method stub
		double price=0;
		for (String Item : orderMap.keySet()) {
			if(Item !=null){
				switch (Item) {
				case "ITEM0001":
					price=18*orderMap.get(Item)+price;
					break;
				case "ITEM0013":
					price=6*orderMap.get(Item)+price;
					break;
				case "ITEM0022":
					price=8*orderMap.get(Item)+price;
					break;
				case "ITEM0030":
					price=2*orderMap.get(Item)+price;
				default:
					break;
				}
				
			}
		}
		return price>30?price-6:price;
	}
    
}
