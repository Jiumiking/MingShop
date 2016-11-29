<?php
$config = array (	
		//应用ID,您的APPID。
		'app_id' => "2016102400751227",

		//商户私钥，您的原始格式RSA私钥
		'merchant_private_key' => 
        "MIICXAIBAAKBgQDarHpIU4ZP6FufDIxRZqw52LTMwEm80x5WX7AEoFo0m2xVfqTx
HN9zSvLi1YAMf7RDiqUzTyN+LrBKs8tf0axqZTng1g/cmER3R65R5mkK0ZbUMRrg
Ze2NZsMLSIyjjlfB000hRssVD12XDjoZBs+y1eYuhsqs/ZGzGNh2pBKxxQIDAQAB
AoGAKdyO5D2pHq76qy35xrODEOfdZL0C4LUBv8M9rQUNf7ipOoyuAsJmPGoCqU35
32qrFar7CSGDR+qkMQjOTB+Vg8YZEeN5ilZqcOXp79wyjjGP+mZy66CJHzxV/U/t
ocjz3HMcFlLvuu+q0vDc3BnL9dI8s/6VwttSq6OgbpeJDVkCQQDvKFqpbxT7G3rH
heGvs413ggkisIM5g3gAAvw3IK1ffHndBqpD/dCQT0eR1hAPJMfa+EC16Ob0bJ0n
qu+qFMT3AkEA6hLUjxKvDBsqcfrbvq3ExEPOjqdfgsCvy8U1RImDiUxgl2Gn4VYv
5k9Ebs4e81cvFncgebeWben5NLd1wWVcIwJBAMkUBtY6fUt7mUm0eUK/FoyKmp++
BTcQII7x85luMhb8k4GQnwu3leofni8x6iKxbA/hdpb8EWMlByVZBVTdTZUCQAq0
Q74rN5ARKfa+ZxAoOChVhXumkcqT7zYdVZtFwpsjwAMMNzYpz9TzaQi8KlQsd33K
gtSuHZX3LitH/H2UmgsCQBhbd+yVNlWc6VLlxO9TEnH2H9kA34mNe3cvX4IxEjVs
qHP/XK921e7sr5oBx+4n1Wv9ws9AB96zIeSragvI/K4=",
		
		//异步通知地址
		'notify_url' => "http://工程公网访问地址/alipay.trade.wap.pay-PHP-UTF-8/notify_url.php",
		
		//同步跳转
		'return_url' => "http://工程公网访问地址/alipay.trade.wap.pay-PHP-UTF-8/return_url.php",

		//编码格式
		'charset' => "UTF-8",

		//支付宝网关
//		'gatewayUrl' => "https://openapi.alipay.com/gateway.do",
        'gatewayUrl' => "https://openapi.alipaydev.com/gateway.do",

		//支付宝公钥
		'alipay_public_key' => "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDIgHnOn7LLILlKETd6BFRJ0GqgS2Y3mn1wMQmyh9zEyWlz5p1zrahRahbXAfCfSqshSNfqOmAQzSHRVjCqjsAw1jyqrXaPdKBmr90DIpIxmIyKXv4GGAkPyJ/6FTFY99uhpiq0qadD/uSzQsefWo0aTvP/65zi3eof7TcZ32oWpwIDAQAB",
		
	
);