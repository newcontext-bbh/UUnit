import UnityEngine

class UUnitTestResult(): 
	runCount = 0
	failedCount =0

	def TestStarted():
		runCount+=1

	def TestFailed():
		failedCount+=1

	def Summary():
		return "${runCount} run, ${failedCount} failed"