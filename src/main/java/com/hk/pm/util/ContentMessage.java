package com.hk.pm.util;

import java.util.Map;

public class ContentMessage {
	
	private  static final String CONTENT_TEXT_ONE="领导审批通过";
	private  static final String CONTENT_TEXT_TWO="领导审批拒绝";
	private  static final String CONTENT_TEXT_THREE="网安负责人审批通过";
	private  static final String CONTENT_TEXT_FOUR="网安负责人审批拒绝";
	
	//舆情提示内容
		public static String backMessage(Map map,int roleId){
			int status=Integer.valueOf(map.get("status")+"");
			String body="舆情更新";
			switch (roleId) {
			case 2:
				if(status==1){
					body=CONTENT_TEXT_ONE;
				}else if(status==-1){
					body=CONTENT_TEXT_TWO;
				}
				break;
			case 3:
				if(status==2){
					body=CONTENT_TEXT_THREE;
				}else if(status==-1){
					body=CONTENT_TEXT_FOUR;
				}
				break;

			default:
				break;
			}
			return body;
		}
}
