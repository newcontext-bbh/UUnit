import UnityEngine
import System.Reflection
import System

class UUnitTestSuite(): 

	tests = []
	result as UUnitTestResult
	
	def Add(test):
		tests.Add(test)
		
	def Run(result) as UUnitTestResult :
		for test as UUnitTestCase in tests:
			result = test.Run(result)
		return result

	def AddAll(aType):
		theType = aType.GetType()
		for methodInformation as MethodInfo in theType.GetMethods() :  
			for attr  in methodInformation.GetCustomAttributes(false):
				testAttr = attr as Attribute
				if testAttr != null :
					ci = theType.GetConstructors()
					temp as duck =  ci[0].Invoke(null)
					temp.SetTest(methodInformation.Name)
					Add(temp)