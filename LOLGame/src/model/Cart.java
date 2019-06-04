package model;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
/**
 * 购物车表（一个表一个类）
 * @author Administrator
 *
 */
//购物车类
public class Cart {

	//购买商品的集合，每一对映射是商品对象及其购买数量的映射
	private HashMap<Commodity,Integer> goods;
	
	//购物车的总金额
	private double amount;

	//构造方法
	public Cart()
	{
		goods = new HashMap<Commodity,Integer>();
		amount = 0.0; //购物车中商品的总金额
	}
	
	public HashMap<Commodity, Integer> getGoods() {
		return goods;
	}

	public void setGoods(HashMap<Commodity, Integer> goods) {
		this.goods = goods;
	}

	
	public double getAmount() {
		return amount;
	}


	public void setAmount(double amount) {
		this.amount = amount;
	}


	//添加商品进购物车的方法
	public boolean addGoodsInCart(Commodity com ,int number)
	{
		if(goods.containsKey(com)) //车中已有这个商品，直接加上新选购的数量
		{
			goods.put(com, goods.get(com)+number);
		}
		else
		{
			goods.put(com, number); //向列表中新增该商品及数量	
		}
		calAmount(); //重新计算购物车的总金额
		return true;
	}
	
	//删除商品的方法
	public boolean removeGoodsFromCart(Commodity com)
	{
		goods.remove(com);
		calAmount(); //重新计算购物车的总金额
		return true;
	}
	
	//统计购物车的总金额
	public double calAmount()
	{
		double sum = 0.0;
		Set<Commodity> keys = goods.keySet(); //获得键的集合
		Iterator<Commodity> it = keys.iterator(); //获得迭代器对象
	    while(it.hasNext())
	    {
	    	Commodity i = it.next();
	    	sum += i.getPrice()* goods.get(i);
	    }
	    this.setAmount(sum); //设置购物车的总金额
	    return amount;
	}
	
}
