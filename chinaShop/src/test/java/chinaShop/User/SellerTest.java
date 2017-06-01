package chinaShop.User;




import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.junit.Test;  
import org.junit.runner.RunWith;  
import org.springframework.test.context.ContextConfiguration;  
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yjg.api.model.Seller;
import com.yjg.api.service.SellerService;

  
@RunWith(SpringJUnit4ClassRunner.class)     //表示继承了SpringJUnit4ClassRunner类  
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})  
  
public class SellerTest {  
   
    @Resource
    private SellerService sellerService;
  
    
    @Test
    public void testaddCart(){
    
    }
    
    
    @Test
    public void testSelectAllCart(){
    	Map<String,Object> map=new HashMap<>();
    	Seller seller = new Seller();
    	seller.setUserId(2);
    	seller.setCreateDate("2222");
    	seller.settEmail("zzz");
    	seller.settIdCard("zzzzzz");
    	seller.settPhoneNum("zzz");
    	seller.settUserName("aa");
    	seller.settIdCardUrl1("11111.jpg");
    	seller.settIdCardUrl2("11111.jpg");
    	map.put("Seller", seller);
    	Map<String, Object> selectAllCart = sellerService.addSeller(map);
    	System.out.println(selectAllCart);
    }
}  
