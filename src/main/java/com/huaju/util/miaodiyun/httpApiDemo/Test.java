package com.huaju.util.miaodiyun.httpApiDemo;

public class Test
{

	/**
	 * @param args
	 */
	public static void main(String[] args)
	{
		// 获取开发者账号信息
		// AccountInfo.execute();

		// 验证码通知短信接口
		IndustrySMS.execute("15978535064","24589");

		// 会员营销短信接口
		// AffMarkSMS.execute();

		// 语音验证码
		// VoiceCode.execute();

	}
}
