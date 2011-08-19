import System

class TestCaseRunner (MonoBehaviour):
	public result = UUnitTestResult()

	def Start ():
		suite = UUnitTestSuite()
		suite.AddAll(TestCaseTest())
		result = suite.Run(result)
		Debug.Log(result.Summary())

	static def RunTests ():
		runner = TestCaseRunner()
		runner.Start()
		ifdef UNITY_EDITOR:
			UnityEditor.EditorApplication.Exit(runner.result.failedCount)
