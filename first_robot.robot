*** Settings ***
Library		SeleniumLibrary


*** Variables ***
${message}		My Message Variables



*** Keywords ***
Say Hello
	Log To Console		ThisIsSayHelloKeywords



*** Test cases ***
ตัวอย่าง การใช้ Variables                 
	Log to Console		${message}	  

ตัวอย่าง การใช้ Keywords	                 
	Say Hello

ตัวอย่าง เปิดเว็บ ebay แล้วพิมพ์คำว่า Automate Test with Doppio                
	Log to Console		เปิดเว็บ ebay
	Open Browser	http://www.ebay.com		browser=chrome 
	Input Text 		id=gh-ac		Automate Test with Doppio
	Sleep		10s

Example 00 normal case
    Open Browser    file:///D:/Doppio%20Basic%20Robot%20Framework%20and%20Web%20automation/ep01/ex00.html     browser=chrome
	...     options=add_experimental_option("detach", True)		# ทำให้โปรแกรมไม่ปิดเองหลังจากทดสอบเสร็จแล้ว ทั้ง Google Chrome และ Microsoft Edge
	Input Text		id=username-box		MyUsername
	Input Text		id=password-box		MyPassword

Example 01 - learn attribute
    Open Browser    file:///D:/Doppio%20Basic%20Robot%20Framework%20and%20Web%20automation/ep01/ex01.html     browser=chrome
	...     options=add_experimental_option("detach", True)		# ทำให้โปรแกรมไม่ปิดเองหลังจากทดสอบเสร็จแล้ว ทั้ง Google Chrome และ Microsoft Edge
	Input Text		xpath=//input[@v='user']		MyUsername
	Input Text		xpath=//input[@v='password']	MyPassword

Example 02 - use parent to make unique
    Open Browser    file:///D:/Doppio%20Basic%20Robot%20Framework%20and%20Web%20automation/ep01/ex02.html     browser=chrome
	...     options=add_experimental_option("detach", True)		# ทำให้โปรแกรมไม่ปิดเองหลังจากทดสอบเสร็จแล้ว ทั้ง Google Chrome และ Microsoft Edge
	Input Text		xpath=//div[@v='username']/input		MyUsername
	Input Text		xpath=//div[@v='password']/input		MyPassword

Example 03 - learn contains
    Open Browser    file:///D:/Doppio%20Basic%20Robot%20Framework%20and%20Web%20automation/ep01/ex03.html     browser=chrome
	...     options=add_experimental_option("detach", True)		# ทำให้โปรแกรมไม่ปิดเองหลังจากทดสอบเสร็จแล้ว ทั้ง Google Chrome และ Microsoft Edge
	Input Text		xpath=//div[contains(@v,'username')]/input		MyUsername
	Input Text		xpath=//div[contains(@v,'password')]/input		MyPassword

Example 04 - use child to make unique
    Open Browser    file:///D:/Doppio%20Basic%20Robot%20Framework%20and%20Web%20automation/ep01/ex04.html     browser=chrome
	...     options=add_experimental_option("detach", True)		# ทำให้โปรแกรมไม่ปิดเองหลังจากทดสอบเสร็จแล้ว ทั้ง Google Chrome และ Microsoft Edge
	Input Text		xpath=//div[span[@c='Username']]/input		MyUsername
	Input Text		xpath=//div[span[@c='Password']]/input		MyPassword
	
Example 05 - use text between tag to make unique
    Open Browser    file:///D:/Doppio%20Basic%20Robot%20Framework%20and%20Web%20automation/ep01/ex05.html     browser=chrome
	...     options=add_experimental_option("detach", True)		# ทำให้โปรแกรมไม่ปิดเองหลังจากทดสอบเสร็จแล้ว ทั้ง Google Chrome และ Microsoft Edge
	Input Text		xpath=//div[span[text()='User:']]/input		MyUsername
	Input Text		xpath=//div[span[text()='Pass:']]/input		MyPassword

Example 06 - use and to help make unique
    Open Browser    file:///D:/Doppio%20Basic%20Robot%20Framework%20and%20Web%20automation/ep01/ex06.html     browser=chrome
	...     options=add_experimental_option("detach", True)		# ทำให้โปรแกรมไม่ปิดเองหลังจากทดสอบเสร็จแล้ว ทั้ง Google Chrome และ Microsoft Edge
	Input Text		xpath=//div[@k='abc' and @p='xyz']/input	MyUsername
	Input Text		xpath=//div[2][@k='abc']/input 				MyPassword
	Input Text		xpath=//div[3][@p='xyz']/input 				MyNickname

Basic Assignment For EP01 
	Log to Console	Enter username, password, and nickname. Drop-down menu, select "Doppio". Click checkbox "Robot is easy" and click button finish.
    Open Browser    file:///D:/Doppio%20Basic%20Robot%20Framework%20and%20Web%20automation/ep01/ep01_small_excercise.html     browser=chrome
    ...     options=add_experimental_option("detach", True)		# ทำให้โปรแกรมไม่ปิดเองหลังจากทดสอบเสร็จแล้ว ทั้ง Google Chrome และ Microsoft Edge
    Input Text      id=username-box                      MyUsername
    Input Text      xpath=//div[@v='password']/input     MyPassword
    Input Text      xpath=//input[@doppio='nickname']    Chopin
    Select From List By Value       id=company           doppio
    Click element   id=op1
    Click element   id=use-me