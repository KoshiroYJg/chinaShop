package chinaShop.User;




import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.junit.Test;  
import org.junit.runner.RunWith;  
import org.springframework.test.context.ContextConfiguration;  
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yjg.api.model.Cart;
import com.yjg.api.service.CartService;

  
@RunWith(SpringJUnit4ClassRunner.class)     //表示继承了SpringJUnit4ClassRunner类  
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})  
  
public class CartTest {  
   
    @Resource
    private CartService cartService;
  
    
    @Test
    public void testaddCart(){
    
    }
    
    
    @Test
    public void testSelectAllCart(){
    	Map<String,Object> map=new HashMap<>();
    	Cart cart = new Cart();
    	map.put("Cart", cart);
    	Map<String, Object> selectAllCart = cartService.SelectAllCart(map);
    	System.out.println(selectAllCart);
    }
}  
