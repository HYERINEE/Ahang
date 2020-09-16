package baby.mem.controller;
import java.util.HashMap;

import baby.mem.pojo.MemberContentController;
import baby.mem.pojo.MemberDeleteController;
import baby.mem.pojo.MemberInsertController;
import baby.mem.pojo.MemberInsertFormController;
import baby.mem.pojo.MemberListController;
import baby.mem.pojo.MemberUpdateController;
import kr.mem.pojo.Controller;
import kr.mem.pojo.*;
public class HandlerMapping {
	//       K, V
   private HashMap<String, Controller> mappings;
   public HandlerMapping() {
	   mappings=new HashMap<String, Controller>();
	   initMap();
   }
   // �ڡڡڡڡڡڡڡڡڡڡڡ�
   private void initMap() {
	   try {
		   mappings.put("/list.do", new MemberListController());
		   mappings.put("/insert.do", new MemberInsertController());
		   mappings.put("/insertForm.do", new MemberInsertFormController());
		   mappings.put("/delete.do", new MemberDeleteController());
		   mappings.put("/content.do", new MemberContentController());
		   mappings.put("/update.do", new MemberUpdateController());
		   
	   }catch(Exception e) {
		   e.printStackTrace();
	   }
   }
   public Controller getController(String key) {
	   return mappings.get(key);
   }
}
