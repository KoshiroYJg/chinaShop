package chinaShop.User;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.junit.Test;  
import org.junit.runner.RunWith;  
import org.springframework.test.context.ContextConfiguration;  
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yjg.api.model.ChinaType;
import com.yjg.api.service.ChinaTypeService;

  
@RunWith(SpringJUnit4ClassRunner.class)     //表示继承了SpringJUnit4ClassRunner类  
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})  
  
public class TypeTest {  
   
    @Resource
    private ChinaTypeService chinaTypeService;
  
    
    @Test
    public void testSelectOneType(){
    	Map<String,Object> map=new HashMap<String,Object>();
    	ChinaType chinaType = new ChinaType();
    	chinaType.setTypeId(1);
    	map.put("ChinaType",chinaType);
    	Map<String, Object> selectOneChinaType = chinaTypeService.selectOneChinaType(map);
    	System.out.println(selectOneChinaType);
    }
    
    
    @Test
    public void testSelectAllType(){
    	Map<String,Object> map=new HashMap<String,Object>();
    	ChinaType chinaType = new ChinaType();
    	map.put("ChinaType",chinaType);
    	Map<String, Object> selectAllChinaType = chinaTypeService.selectAllChinaType(map);
    	System.out.println(selectAllChinaType);
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		String format = sdf.format(new Date());
		System.out.println(format);
    }
}  
