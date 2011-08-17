import UnityEngine

class TestCaseRunner (MonoBehaviour): 

	def Start ():

		suite = UUnitTestSuite()
		suite.AddAll(TestCaseTest())
		result = suite.Run(null)
		Debug.Log(result.Summary())
