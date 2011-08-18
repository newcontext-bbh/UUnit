import System.Reflection

class UUnitTestCase (): 
	local as duck
	
	[Property(Testx)]
	_test as string
	
	def constructor():
		pass
	
	def SetTest(aMethod as string):
		_test = aMethod
	
	def Run(result as UUnitTestResult):
		if result == null :
			result = UUnitTestResult()
		SetUp()
		result.TestStarted()
		try:
			selfType = self.GetType()
			myMethInfo=selfType.GetMethod(_test)
			myMethInfo.Invoke(self,null)
		except e as TargetInvocationException:
			result.TestFailed()
			Debug.Log(e.InnerException)
		return result
		
	virtual def SetUp():
		pass
		
	