package chinaShop.User;




import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.junit.Test;  
import org.junit.runner.RunWith;  
import org.springframework.test.context.ContextConfiguration;  
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yjg.api.model.Message;
import com.yjg.api.service.MessageService;

  
@RunWith(SpringJUnit4ClassRunner.class)     //表示继承了SpringJUnit4ClassRunner类  
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})  
  
public class MessageTest {  
   
    @Resource
    private MessageService messageService;
  
    
    @Test
    public void testaddMessage(){
    	Map<String,Object> map=new HashMap<>();
    	Message message = new Message();
    	message.setCreateDate("");
    	message.setmDetail("早日完成");
    	message.setmName("lili");
    	message.setmPhone("13970004564");
    	message.setmEmail("1181793929@qq.com");
    	messageService.addMessage(map);
    }
    
    
    @Test
    public void testSelectAllType(){
  
    }
}  
