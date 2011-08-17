import UnityEngine

class TestCaseDummy (UUnitTestCase): 
	public wasRun as bool
	public wasSetUp as bool
	public log as string
	
	
	[UUnitTest]
	def TestMethod():
		wasRun = true
	
	def SetUp():
		wasRun = false
		wasSetUp = true
		log = "setUp "
	
	[UUnitTest]
	def TestFail():
		UUnitAssert.True( false, "Expected Fail Result")
	