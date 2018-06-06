package com.huaju.util.miaodiyun.httpApiDemo;

import com.huaju.util.miaodiyun.httpApiDemo.common.Config;
import com.huaju.util.miaodiyun.httpApiDemo.common.HttpUtil;

import java.net.URLEncoder;




/**
 * 验证码通知短信接口
 * 
 * @ClassName: IndustrySMS
 * @Description: 验证码通知短信接口
 *
 */
public class IndustrySMS
{
	private static String operation = "/industrySMS/sendSMS";

	private static String accountSid = Config.ACCOUNT_SID;
//	private static String to = "17637636528";
	//private static String smsContent = "【凌霄宝殿】您的验证码为YouIsSB，请于2333分钟内正确输入，如非本人操作，请忽略此短信。";

	/**
	 * 验证码通知短信
	 */
	public static void execute(String to,String yznum)
	{
		String smsContent = "【凌霄宝殿】您的验证码为"+yznum+"，请于10分钟内正确输入，如非本人操作，请忽略此短信。";
		String tmpSmsContent = null;
	    try{
	      tmpSmsContent = URLEncoder.encode(smsContent, "UTF-8");
	    }catch(Exception e){
	      
	    }
	    String url = Config.BASE_URL + operation;
	    String body = "accountSid=" + accountSid + "&to=" + to + "&smsContent=" + tmpSmsContent
	        + HttpUtil.createCommonParam();

	    // 提交请求
	    String result = HttpUtil.post(url, body);

	    System.out.println("result:" + System.lineSeparator() + result);
	}
}
