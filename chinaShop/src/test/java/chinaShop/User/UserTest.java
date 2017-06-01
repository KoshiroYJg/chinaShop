package chinaShop.User;


import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;  
import org.junit.Test;  
import org.junit.runner.RunWith;  
import org.springframework.test.context.ContextConfiguration;  
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yjg.api.model.User;
import com.yjg.api.service.UserService;

  
@RunWith(SpringJUnit4ClassRunner.class)     //表示继承了SpringJUnit4ClassRunner类  
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})  
  
public class UserTest {  
    private static Logger logger = Logger.getLogger(UserTest.class);  
    
    @Resource
    private UserService userService;
  
    
    @Test  
    public void testAddUser() {  
    	Map<String,Object> map=new HashMap<String,Object>();
    	User user = new User();
    	user.setUserName("tom");
    	user.setGender("M");
    	user.setPassword("111111");
    	user.setPhoneNum("13970004564");
    	user.setEmail("1181793929@qq.com");
    	user.setAddress("江西-赣州-兴国");
    	user.setAddressD("江背");
    	map.put("User", user);
    	logger.info("stuService.sele 开始");
    	Map<String, Object> map2 = userService.addUser(map);
    	logger.info("stuService.sele 结束");
    	System.out.println(map2);

    }  
    
    @Test  
    public void testCheckName() {  
    	Map<String,Object> map=new HashMap<String,Object>();
    	User user = new User();
    	user.setUserName("koshiroy");
    	map.put("User", user);
    	logger.info("stuService.sele 开始");
    	Map<String, Object> map2 = userService.checkName(map);
    	logger.info("stuService.sele 结束");
    	System.out.println(map2);
    }  
    
}  
