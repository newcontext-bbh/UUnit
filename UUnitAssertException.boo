import System

class UUnitAssertException (Exception): 
	public Expected as duck
	public Received as duck
	public Msg as string
	def constructor(expected, received, msg):
		Expected = expected
		Received = received
		Msg = msg
		super("[UUnit] - Assert Failed - Expected: " + Expected + " Received: " + Received + "\n\t\t(" + Msg + ")")
