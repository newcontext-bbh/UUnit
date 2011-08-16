import UnityEngine



class TestCaseTest(UUnitTestCase): 

	[UUnitTest]
	def TestRunning():
		local= TestCaseDummy(Testx:"TestMethod")
		UUnitAssert.False( local.wasRun, " not wasRun")
		local.Run(null)
		UUnitAssert.True( local.wasRun, "wasRun")

	[UUnitTest]
	def TestSetUp():
		local= TestCaseDummy(Testx:"TestMethod")
		local.Run(null)
		UUnitAssert.True( local.wasSetUp, "wasSetUp")
		UUnitAssert.EqualString( local.log, "setUp ", "setup")

	[UUnitTest]				
	def TestResult():
		local= TestCaseDummy(Testx:"TestMethod")
		result = local.Run(null)
		UUnitAssert.EqualString( "1 run, 0 failed", result.Summary(), "testResult")			

	[UUnitTest]				
	def TestFailure():
		local= TestCaseDummy(Testx:"TestFail")
		result = local.Run(null)
		UUnitAssert.EqualString( "1 run, 1 failed", result.Summary(), "Failure")	

	[UUnitTest]		
	def TestTestSuiteAdd():
		suite = UUnitTestSuite()
		suite.Add(TestCaseDummy(Testx:"TestMethod"))
		suite.Add(TestCaseDummy(Testx:"TestFail"))
		result = suite.Run(null)
		UUnitAssert.EqualString( "2 run, 1 failed", result.Summary(), "Suite")

	[UUnitTest]		
	def TestTestSuiteAddAll():	
		suite = UUnitTestSuite()
		suite.AddAll(TestCaseDummy())
		result = suite.Run(null)
		UUnitAssert.EqualString( "2 run, 1 failed", result.Summary(), "Suite")

		