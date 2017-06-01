package chinaShop.User;




import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.junit.Test;  
import org.junit.runner.RunWith;  
import org.springframework.test.context.ContextConfiguration;  
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yjg.api.model.Goods;
import com.yjg.api.service.GoodsService;

  
@RunWith(SpringJUnit4ClassRunner.class)     //表示继承了SpringJUnit4ClassRunner类  
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})  
  
public class GoodsTest {  
   
    @Resource
    private GoodsService goodsService;
  
    
    @Test
    public void testaddGoods(){
    
    }
    
    
    @Test
    public void testSelectAllGoods(){
    	Map<String,Object> map=new HashMap<>();
    	Goods goods = new Goods();
    	goods.setIfZK("N");
    	map.put("Goods", goods);
    	Map<String, Object> selectAllGoods = goodsService.SelectAllGoods(map);
    	System.out.println(selectAllGoods);
    }
}  
